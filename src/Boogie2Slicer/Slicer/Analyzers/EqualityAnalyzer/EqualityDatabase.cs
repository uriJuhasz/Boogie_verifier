using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Numerics;
using Slicer.Analyzers.EqualityAnalyzer.MapAnalyzer;
using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers.EqualityAnalyzer
{
    ////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////
    public class EqualityDatabase : IncarnationAndInequalityMap
    {
        //////////////////////////////////////////////////////////////////
        private static readonly Function notFunction = BFunctionTemplate.not.getInstance();
        private readonly List<EqualityDatabase> predecessors;
        internal AssignmentMap assignmentMap;
        internal LazyUnionSet<string> subExpressions;

        public EqualityDatabase(StatementId si, Procedure procedure, PropositionalFormula condition)
            : this(si, procedure, condition, null)
        {
        }

        //////////////////////////////////////////////////////////////////
        public EqualityDatabase(StatementId si, Procedure procedure, PropositionalFormula pathCondition,
                                ICollection<EqualityDatabase> predecessors)
        {
            Debug.Assert(si != null);
            Debug.Assert(procedure != null);
            Debug.Assert(pathCondition != null);

            statementId = si;
            this.procedure = procedure;
            this.pathCondition = new PropositionalFormula(pathCondition);
//            var npc = !this.pathCondition;
//            Debug.Assert((npc | this.pathCondition).isTrue);

            localMapping = new Dictionary<string, Representative>();
            mappingCache = new Dictionary<string, MappingCacheEntry>();
            reverseMapping = new Dictionary<string, ReverseMapEntry>();

            subExpressions = new LazyUnionSet<string>();
            mapIncarnationMap = new Dictionary<string, MapIncarnation>();

            if (predecessors != null)
            {
//                Console.WriteLine("\t\tEqualityDatabase.preds={0}",predecessors.Count);
                Debug.Assert(predecessors.Count > 0);

                this.predecessors = new List<EqualityDatabase>(predecessors);
                conditionVariableIndices = predecessors.First().conditionVariableIndices;
                conditionVariableNames = predecessors.First().conditionVariableNames;
//                Console.WriteLine("\t\tEqualityDatabase.additionalConditions");
                additionalConditions =
                    PropositionalFormula.or(from p in predecessors select p.additionalConditions & p.pathCondition);

//                Console.WriteLine("\t\tEqualityDatabase.subExpressions");
                subExpressions = new LazyUnionSet<string>(from p in predecessors select p.subExpressions);

//                Console.WriteLine("\t\tEqualityDatabase.assignmentMap");
                assignmentMap = new AssignmentMap(this.pathCondition, from p in predecessors select p.assignmentMap);
            }
            else
            {
//                Console.WriteLine("\t\tEqualityDatabase.preds=0");
                this.predecessors = new List<EqualityDatabase>();
                conditionVariableIndices = new Dictionary<string, int>();
                conditionVariableNames = new Dictionary<int, ProgramVariable>();
                additionalConditions = new PropositionalFormula(true);

//                Console.WriteLine("\t\tEqualityDatabase.preds=0.assignmentMap");
                assignmentMap = new AssignmentMap(this.pathCondition);
            }

            Debug.Assert(conditionVariableIndices != null);
        }

        public PropositionalFormula additionalConditions { get; private set; }
        private Dictionary<string, ReverseMapEntry> reverseMapping { get; set; }
        private Dictionary<string, Representative> localMapping { get; set; }
        private Dictionary<string, MappingCacheEntry> mappingCache { get; set; }
        public Procedure procedure { get; private set; }
        internal StatementId statementId { get; set; }

        #region IncarnationAndInequalityMap Members

        public bool isDisjoint(ExpressionList indices, ExpressionList updatedIndices)
        {
            Debug.Assert(indices.count == updatedIndices.count);
            int c = Math.Min(indices.count, updatedIndices.count);
            for (int i = 0; i < c; i++)
            {
                if (areUnequal(indices[i], updatedIndices[i]))
                {
                    Debug.Assert(indices[i].isGround);
                    Debug.Assert(updatedIndices[i].isGround);
                    return true;
                }
            }
            return false;
        }

        public PropositionalFormula pathCondition { get; private set; }
        public Dictionary<string, int> conditionVariableIndices { get; private set; }
        public Dictionary<int, ProgramVariable> conditionVariableNames { get; private set; }
        public Dictionary<string, MapIncarnation> mapIncarnationMap { get; private set; }

        #endregion

        //////////////////////////////////////////////////////////////////
        public void addConditionVariable(ProgramVariable v)
        {
            if (conditionVariableIndices.ContainsKey(v.name))
                return;

            conditionVariableIndices[v.name] = conditionVariableIndices.Count;
            conditionVariableNames[conditionVariableNames.Count] = v;
            Debug.Assert(conditionVariableIndices.Count == conditionVariableNames.Count);
        }

        ////////////////////////////////////////////////////////////////////////////
        public PropositionalFormula toDNF(BasicEdge.Guard guard)
        {
            var le = guard.expression as LiteralExpression;
            if (le != null)
                return new PropositionalFormula((le.value as BooleanValue).value);
            else
                return makeDNF(guard.expression);
        }

        //////////////////////////////////////////////////////////////////
        public bool isFact(Expression e)
        {
            bool result = false;

            Debug.Assert(BooleanType.isBoolean(e.type));
            if (e is LiteralExpression)
                return ((e as LiteralExpression).value as BooleanValue).value;

            Representative rep = tryGetRepresentative(e);

            if (
                rep != null
                && rep.expression is LiteralExpression
                && BooleanType.isBoolean(rep.expression.type)
                && ((rep.expression as LiteralExpression).value as BooleanValue).value
                )
                result = true;

            return result;
        }

        ////////////////////////////////////////////////////////////////////////////

        //////////////////////////////////////////////////////////////////
        public Expression simplifyExpression(Expression e)
        {
            Expression result = e;

            for (;;)
            {
                Expression candidate = result;
                Representative rep = tryGetRepresentative(candidate);

                if (rep != null)
                {
                    result = rep.expression;
                }
//                else
                {
                    var fae = result as FAE;
                    var qe = result as QuantifiedExpression;
                    var qte = result as QuantifiedTypeExpression;

                    if (fae != null)
                        result = simplifyFAExpression(fae);
                    else if (qe != null)
                        result = simplifyQExpression(qe);
                    else if (qte != null)
                        result = simplifyQTExpression(qte);
                }
                if (result.ToString() == candidate.ToString())
                    break;
            }

            return result;
        }

        //////////////////////////////////////////////////////////////////
        public Representative tryGetRepresentative(ProgramVariable v)
        {
            return tryGetRepresentative(new BasicProgramVariableExpression(v));
        }

        //////////////////////////////////////////////////////////////////
        public static Expression getCompactNegationIfBoolean(Expression e)
        {
            if (e.type is BooleanType)
            {
                if (isNegation(e))
                    return (e as FAE).arguments[0];
                else
                    return new BasicFAE(
                        BFunction.not,
                        new ExpressionList(e)
                        );
            }
            return null;
        }

        //////////////////////////////////////////////////////////////////
        public void assume(Expression e)
        {
            Debug.Assert(e.type == BooleanType.booleanType);

//            addConditionIfRelevant(e);
            var fae = e as FAE;
            if (fae != null)
                assume(fae);
                //;
            else
            {
                addFact(e); //TODO - check no derivable contradiction
                //                if (!(targetE is LiteralExpression) && !localMapping.ContainsKey(targetE.ToString()))
                //                    addMapping(targetE, new Representative(new BasicLiteralExpression(BooleanValue.makeBooleanValue(true)), true));
            }
        }

/*        //////////////////////////////////////////////////////////////////
        public void addInequality(Constant c1, Constant c2)
        {
            addFact(makeInequality(new BasicProgramVariableExpression(c1), new BasicProgramVariableExpression(c2)));
        }
        */
        //////////////////////////////////////////////////////////////////
        public void addInequality(Expression e1, Expression e2)
        {
            addFact(makeInequality(e1, e2));
        }

        //////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////////
        private PropositionalFormula makeDNF(Expression expression)
        {
            var fae = expression as FAE;
            if (fae != null && BFunction.isNegation(fae.function))
                return new PropositionalFormula(getIndex(fae.arguments[0]), false);
            else
                return new PropositionalFormula(getIndex(expression), true);
        }

        //////////////////////////////////////////////////////////////////
        private MappingCacheEntry getReps(Expression expression)
        {
            string name = expression.ToString();

            MappingCacheEntry result = null;
            if (!mappingCache.TryGetValue(name, out result))
            {
                Representative localRep = null;
                if (localMapping.TryGetValue(name, out localRep))
                {
                    result = new MappingCacheEntry(localRep, new PropositionalFormula(pathCondition));
                }
                else
                {
                    if (predecessors.Count == 0)
                    {
                        result = new MappingCacheEntry(null, new PropositionalFormula(pathCondition));
                    }
                    else
                    {
                        result = new MappingCacheEntry(from p in predecessors select p.getReps(expression));
                    }


                    if (result.candidates.Count == 1 && result.candidates.First().Value.Item1 != null)
                        addMapping(expression, result.candidates.First().Value.Item1);
                    else
                    {
                        mappingCache.Add(name, result);
                    }
                }
            }

            return result;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyQExpression(QuantifiedExpression qe)
        {
            if (!qe.expression.freeVariables.Contains(qe.variable))
                return qe.expression;
            return qe;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyQTExpression(QuantifiedTypeExpression qte)
        {
            if (!qte.expression.freeTypeVariables.Contains(qte.variable))
                return qte.expression;
            return qte;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyFAExpression(FAE e)
        {
            {
                var newArgs = new Expression[e.arguments.count];
                bool changed = false;
                for (int i = 0; i < e.arguments.count; i++)
                {
                    newArgs[i] = simplifyExpression(e.arguments[i]);
                    if (!ReferenceEquals(newArgs[i], e.arguments[i]))
                        changed = true;
                }
                if (changed)
                    e = new BasicFAE(e.function, new ExpressionList(newArgs));
            }

            if (BFunction.isNegation(e.function))
                return simplifyNegation(e);

            if (BFunction.isEquality(e.function))
                return simplifyEquality(e);

            if (BFunction.isInEquality(e.function))
                return simplifyInequality(e);

            if (BFunction.isConjunction(e.function))
                return simplifyConjunction(e);

            if (BFunction.isDisjunction(e.function))
                return simplifyDisjunction(e);

            if (BFunction.isImplication(e.function))
                return simplifyImplication(e);

            if (BFunction.isEquivalence(e.function))
                return simplifyEquivalence(e);

            if (e.function.isITE)
                return simplifyITE(e);

            if (BFunction.isMapRead(e.function))
                return simplifyMapRead(e);

            if (isCommutative(e.function))
                return simplifyCommutative(e);

            if (isAssociative(e.function))
                return simplifyAssociative(e);

            if (isIntegerOrder(e.function))
                return simplifyIntegerOrder(e);

            if (isArithmetic(e.function))
                return simplifyArithmeticExpression(e);

            return e;
        }

        //////////////////////////////////////////////////////////////////

        private BigInteger plus(BigInteger x, BigInteger y)
        {
            return x + y;
        }

        private BigInteger times(BigInteger x, BigInteger y)
        {
            return x*y;
        }

        private BigInteger minus(BigInteger x, BigInteger y)
        {
            return x - y;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyArithmeticExpression(FAE e)
        {
            Expression result = e;
            if (e.arguments.count == 2)
            {
                var l0 = e.arguments[0] as LiteralExpression;
                var l1 = e.arguments[1] as LiteralExpression;
                BinaryIntegerOperator op = null;
                if (l0 != null && l1 != null)
                {
                    BigInteger l0v = (l0.value as IntegerValue).value;
                    BigInteger l1v = (l1.value as IntegerValue).value;
                    switch (e.function.name)
                    {
                        case "+":
                            op = plus;
                            break;
                        case "-":
                            op = minus;
                            break;
                        case "*":
                            op = times;
                            break;
                        default:
                            op = null;
                            break;
                    }
                    if (op != null)
                    {
                        result = new BasicLiteralExpression(IntegerValue.make(op(l0v, l1v)));
                    }
                }
            }
            else if (e.arguments.count == 1)
            {
                Debug.Assert(e.function.name == "-");
                var l0 = e.arguments[0] as LiteralExpression;
                if (l0 != null)
                {
                    BigInteger l0v = (l0.value as IntegerValue).value;
                    result = new BasicLiteralExpression(IntegerValue.make(-l0v));
                }
            }
            return result;
        }

        //////////////////////////////////////////////////////////////////
        private static bool isArithmetic(Function function)
        {
            return
                (function.name == "+")
                || (function.name == "-")
                || (function.name == "*")
                ;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyIntegerOrder(FAE e)
        {
            if (e.function.name == "<=") // m<=b ==> !b<m
                return new BasicFAE(
                    BFunctionTemplate.not.getInstance(),
                    new ExpressionList(
                        simplifyExpression(
                            new BasicFAE(
                                BFunctionTemplate.lt.getInstance(),
                                new ExpressionList(
                                    e.arguments[1],
                                    e.arguments[0]
                                    )
                                )
                            )
                        )
                    );

            if (e.function.name == ">=") // m>=b ==> !m<b
                return new BasicFAE(
                    BFunctionTemplate.not.getInstance(),
                    new ExpressionList(
                        simplifyExpression(
                            new BasicFAE(
                                BFunctionTemplate.lt.getInstance(),
                                new ExpressionList(
                                    e.arguments[0],
                                    e.arguments[1]
                                    )
                                )
                            )
                        )
                    );

            if (e.function.name == ">") // m>b ==> b<m
                return
                    simplifyExpression(
                        new BasicFAE(
                            BFunctionTemplate.lt.getInstance(),
                            new ExpressionList(
                                e.arguments[1],
                                e.arguments[0]
                                )
                            )
                        );


            Debug.Assert(e.function.name == "<");
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private static bool isIntegerOrder(Function function)
        {
            return
                function.name == "<"
                || function.name == "<="
                || function.name == ">="
                || function.name == ">"
                ;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyAssociative(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);

            var lfae = e.arguments[0] as FAE;
            if (lfae != null && lfae.function == e.function)
            {
                return simplifyFAExpression(
                    new BasicFAE(
                        e.function,
                        new ExpressionList(
                            lfae.arguments[0],
                            simplifyExpression(
                                new BasicFAE(
                                    e.function,
                                    new ExpressionList(
                                        lfae.arguments[1],
                                        e.arguments[1]
                                        )
                                    )
                                )
                            )
                        )
                    );
            }
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private FAE simplifyCommutative(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);
            if (e.arguments[0].ToString().CompareTo(e.arguments[1].ToString()) < 0)
                return new BasicFAE(
                    e.function,
                    new ExpressionList(
                        e.arguments[1],
                        e.arguments[0]
                        )
                    );
            else
                return e;
        }

        //////////////////////////////////////////////////////////////////
        private bool isCommutative(Function function)
        {
            return
                BFunction.isConjunction(function)
                || BFunction.isDisjunction(function)
                || BFunction.isEquality(function)
                || function.name == "+"
                || function.name == "*"
                ;
        }

        //////////////////////////////////////////////////////////////////
        private bool isAssociative(Function function)
        {
            return
                BFunction.isConjunction(function)
                || BFunction.isDisjunction(function)
                || BFunction.isEquality(function)
                || function.name == "+"
                || function.name == "*"
                ;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyNegation(FAE e)
        {
            Debug.Assert(e.arguments.count == 1);
            var neafae = e.arguments[0] as FAE;
            Expression result = e;
            if (neafae != null)
            {
                if (BFunction.isNegation(neafae.function)) // !!targetE   ==> targetE
                    result = neafae.arguments[0];
                else if (BFunction.isInEquality(neafae.function)) // !x!=y ==> x==y
                    result = simplifyExpression(
                        new BasicFAE(BFunction.eq(neafae.function.argumentTypes[0]),
                                                               neafae.arguments)
                        );
                else if (BFunction.isConjunction(neafae.function)) //!(m&&b) ==> !m || !b
                    result = simplifyExpression(new BasicFAE(
                                                    BFunction.or,
                                                    new ExpressionList(
                                                        simplifyExpression(
                                                            new BasicFAE(BFunction.not,
                                                                                                   new ExpressionList(
                                                                                                       neafae.arguments[
                                                                                                           0]))),
                                                        simplifyExpression(
                                                            new BasicFAE(BFunction.not,
                                                                                                   new ExpressionList(
                                                                                                       neafae.arguments[
                                                                                                           1])))
                                                        )
                                                    )
                        );
                else if (BFunction.isDisjunction(neafae.function)) //!(m||b) ==> !m && !b
                    result = simplifyExpression(new BasicFAE(
                                                    BFunction.and,
                                                    new ExpressionList(
                                                        simplifyExpression(
                                                            new BasicFAE(BFunction.not,
                                                                                                   new ExpressionList(
                                                                                                       neafae.arguments[
                                                                                                           0]))),
                                                        simplifyExpression(
                                                            new BasicFAE(BFunction.not,
                                                                                                   new ExpressionList(
                                                                                                       neafae.arguments[
                                                                                                           1])))
                                                        )
                                                    )
                        );
                else if (BFunction.isImplication(neafae.function)) //!(m==>b) ==> m && !b
                    result = simplifyExpression(new BasicFAE(
                                                    BFunction.and,
                                                    new ExpressionList(
                                                        neafae.arguments[0],
                                                        simplifyExpression(
                                                            new BasicFAE(BFunction.not,
                                                                                                   new ExpressionList(
                                                                                                       neafae.arguments[
                                                                                                           1])))
                                                        )
                                                    )
                        );
            }
            else
            {
                var a0al = e.arguments[0] as LiteralExpression;
                if (a0al != null)
                {
                    Debug.Assert(BooleanType.isBoolean(e.type));
                    var a0alabv = a0al.value as BooleanValue;
                    Debug.Assert(a0alabv != null);
                    result = new BasicLiteralExpression(a0alabv.getNegation()); //!false==>true, !true==>false
                }
            }

            return result;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyEquality(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);
            if (e.arguments[0].ToString() == e.arguments[1].ToString())
                return new BasicLiteralExpression(BooleanValue.makeBooleanValue(true));
            if (e.arguments[0] is LiteralExpression && e.arguments[1] is LiteralExpression &&
                e.arguments[0].type is IntegerType)
                return new BasicLiteralExpression(BooleanValue.makeBooleanValue(false));
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyInequality(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);
            return simplifyExpression(
                new BasicFAE(
                    BFunction.not,
                    new ExpressionList(
                        simplifyExpression(
                            new BasicFAE(
                                BFunction.eq(e.arguments[0].type),
                                new ExpressionList(
                                    e.arguments[0],
                                    e.arguments[1]
                                    )
                                )
                            )
                        )
                    )
                );
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyEquivalence(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);
            Expression arg0 = e.arguments[0];
            Expression arg1 = e.arguments[1];
            if (arg0 is LiteralExpression)
                if (((arg0 as LiteralExpression).value as BooleanValue).value)
                    return arg1;
                else
                    return getCompactNegationIfBoolean(arg0);
            if (arg1 is LiteralExpression)
                if (((arg1 as LiteralExpression).value as BooleanValue).value)
                    return arg0;
                else
                    return getCompactNegationIfBoolean(arg1);
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyConjunction(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);
            Expression arg0 = e.arguments[0];
            Expression arg1 = e.arguments[1];
            if (arg0 is LiteralExpression)
                if (((arg0 as LiteralExpression).value as BooleanValue).value)
                    return arg1;
                else
                    return new BasicLiteralExpression(BooleanValue.makeBooleanValue(false));
            if (arg1 is LiteralExpression)
                if (((arg1 as LiteralExpression).value as BooleanValue).value)
                    return arg0;
                else
                    return new BasicLiteralExpression(BooleanValue.makeBooleanValue(false));
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyDisjunction(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);
            Expression arg0 = e.arguments[0];
            Expression arg1 = e.arguments[1];
            if (arg0 is LiteralExpression)
                if (((arg0 as LiteralExpression).value as BooleanValue).value)
                    return new BasicLiteralExpression(BooleanValue.makeBooleanValue(true));
                else
                    return arg1;
            if (arg1 is LiteralExpression)
                if (((arg1 as LiteralExpression).value as BooleanValue).value)
                    return new BasicLiteralExpression(BooleanValue.makeBooleanValue(true));
                else
                    return arg0;
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyImplication(FAE e)
        {
            Debug.Assert(e.arguments.count == 2);
            Expression arg0 = e.arguments[0];
            Expression arg1 = e.arguments[1];
            if (arg0 is LiteralExpression)
                if (((arg0 as LiteralExpression).value as BooleanValue).value)
                    return arg1; //true =>arg1 ==> arg1
                else
                    return new BasicLiteralExpression(BooleanValue.makeBooleanValue(true)); //false=>arg1 ==> true
            if (arg1 is LiteralExpression)
                if (((arg1 as LiteralExpression).value as BooleanValue).value) //arg0=>true  ==> true
                    return new BasicLiteralExpression(BooleanValue.makeBooleanValue(true));
                else //arg0=>false ==> !arg0
                    return simplifyExpression(
                        new BasicFAE(
                            BFunction.not,
                            new ExpressionList(arg1)
                            )
                        );
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private Expression simplifyITE(FAE e)
        {
            Debug.Assert(e.arguments.count == 3);
            Expression arg0 = e.arguments[0];
            if (arg0 is LiteralExpression)
                if (((arg0 as LiteralExpression).value as BooleanValue).value)
                    return e.arguments[1]; //if (true)  then a1 else a2 ==> a1
                else
                    return e.arguments[2]; //if (false) then a1 else a2 ==> a2

            if (e.arguments[1].ToString() == e.arguments[2].ToString()) //if (*) then a1 else a1 ==> a1
                return e.arguments[1];
            return e;
        }

        //////////////////////////////////////////////////////////////////
        private void addFact(Expression e)
        {
            Debug.Assert(BooleanType.isBoolean(e.type));
            if (isFact(e))
                return;

            Representative rep = tryGetRepresentative(e);
            if (rep != null)
            {
                if ((rep is LiteralExpression) && !((rep as LiteralExpression).value as BooleanValue).value)
                {
                    Console.WriteLine("[{0}] Warning - condition evaluates to false \"{1}\"", statementId.ToString(),
                                      e.ToString());
                    additionalConditions = new PropositionalFormula(false);
                }
                updateorAddMapping(e, new Representative(true));
                addFact(rep.expression);
            }
            else
                addMapping(e, new Representative(true));
        }

        ////////]//////////////////////////////////////////////////////////
        private void addMapping(ProgramVariable source, Representative rep)
        {
            addMapping(new BasicProgramVariableExpression(source), rep);
        }

        //////////////////////////////////////////////////////////////////
        private void addMapping(Expression expression, Representative rep)
        {
            Debug.Assert(!localMapping.ContainsKey(expression.ToString()));

            updateorAddMapping(expression, rep);
        }

        //////////////////////////////////////////////////////////////////
        private void updateorAddMapping(Expression expression, Representative rep)
        {
            Debug.Assert(expression != null);
            Debug.Assert(rep != null);
            Debug.Assert(expression.ToString() != rep.expression.ToString());

            setMapping(expression, rep);
            Expression ne = getCompactNegationIfBoolean(expression);
            if (ne != null)
                setMapping(ne, rep.getNegation());
        }

        //////////////////////////////////////////////////////////////////
        private void setMapping(Expression source, Representative rep)
        {
            string name = source.ToString();
            mappingCache.Remove(name);
            localMapping[name] = rep;
            if (!reverseMapping.ContainsKey(rep.expression.ToString()))
                reverseMapping.Add(rep.expression.ToString(), new ReverseMapEntry(rep));
            reverseMapping[rep.expression.ToString()].addEntry(source);
        }

        //////////////////////////////////////////////////////////////////
        private void addConditionIfRelevant(Expression expression)
        {
            var fae = expression as FreeAtomicExpression;
            bool polarity = true;
            if (fae == null && isNegation(fae))
            {
                fae = (expression as FAE).arguments[0] as FreeAtomicExpression;
                polarity = false;
            }

            if (fae != null)
            {
                int index = -1;
                if (conditionVariableIndices.TryGetValue(fae.name, out index))
                    additionalConditions.andWith(new PropositionalFormula(index, polarity));
                //TODO:check for contradiction
            }
        }

        //////////////////////////////////////////////////////////////////
        private Representative tryGetRepresentative(Expression e)
        {
            Representative result = getReps(e).getRep(new PropositionalFormula(pathCondition & additionalConditions));

            if (result == null)
            {
                if (isNegation(e))
                {
                    var fae = (e as FAE);
                    Expression arg0 = fae.arguments[0];
                    var arg0asfae = arg0 as FreeAtomicExpression;
                    if (arg0asfae != null)
                        result = new Representative(arg0asfae, true).getNegation();
                    else
                    {
                        Representative n = tryGetRepresentative(arg0);
                        if (n != null)
                            result = n.getNegation();
                    }
                }
            }

            Expression re = ((result != null) ? result.expression : e);

            {
                PropositionalFormula pf, nf;
                if (tryGetPropositionalFormulae(re, out pf, out nf))
                {
                    {
                        PropositionalFormula pc = pathCondition & additionalConditions;
                        if ((pc & nf).isFalse)
                            result = new Representative(true);
                        else if ((pc & pf).isFalse)
                            result = new Representative(false);
                    }
                }
            }

            return result;
        }

        //////////////////////////////////////////////////////////////////

        private bool tryGetPropositionalFormulae(Expression re, out PropositionalFormula pf, out PropositionalFormula nf)
        {
            var pve = re as ProgramVariableExpression;
            var fae = re as FAE;
            ProgramVariable pv = null;
            bool polarity = true;
            if (pve != null)
            {
                pv = pve.programVariable;
                polarity = true;
            }
            else if (fae != null && BFunction.isNegation(fae.function))
            {
                var npve = fae.arguments[0] as ProgramVariableExpression;
                if (npve != null)
                {
                    pv = npve.programVariable;
                    polarity = false;
                }
            }

            int index;
            if (pv != null && conditionVariableIndices.TryGetValue(pv.name, out index))
            {
                pf = new PropositionalFormula(index, polarity);
                nf = new PropositionalFormula(index, !polarity);
                return true;
            }
            else
            {
                pf = null;
                nf = null;
                return false;
            }
        }

        //////////////////////////////////////////////////////////////////
        private Representative tryGetRepresentativeOrSelfIfInitialized(Expression e)
        {
            Representative rep = tryGetRepresentative(e);
            if (rep == null)
            {
                var pve = e as ProgramVariableExpression;
                var le = e as LiteralExpression;
                if (pve != null)
                {
                    ProgramVariable pv = pve.programVariable;
                    if (pv.isInput || pv.isGlobal || assignmentMap.map.ContainsKey(pv.name) ||
                        getReps(e).candidates.Count > 1)
                        rep = new Representative(pv, true);
                }
                else if (le != null)
                {
                    rep = new Representative(le, true);
                }
            }
            return rep;
        }

        //////////////////////////////////////////////////////////////////
        private void assumeEquality(FAE fae)
        {
            Debug.Assert(fae.arguments.count == 2);

            Representative rep0 = tryGetRepresentativeOrSelfIfInitialized(fae.arguments[0]);
            Representative rep1 = tryGetRepresentativeOrSelfIfInitialized(fae.arguments[1]);

            if (rep0 == null && rep1 != null)
            {
                addMapping(fae.arguments[0], rep1);
                return;
            }
            if (rep1 == null && rep0 != null)
            {
                addMapping(fae.arguments[1], rep0);
                return;
            }

            if (rep0 == null && rep1 == null)
            {
                var arg0v = fae.arguments[0] as ProgramVariableExpression;
                var arg1v = fae.arguments[1] as ProgramVariableExpression;
                if (arg0v != null && arg1v == null)
                {
                    addMapping(fae.arguments[1], new Representative(arg0v, true));
                    return;
                }
                else if (arg0v == null && arg1v != null)
                {
                    addMapping(fae.arguments[0], new Representative(arg1v, true));
                    return;
                }
                else if (arg0v != null && arg1v != null)
                {
                    bool arg0rm = reverseMapping.ContainsKey(arg0v.name);
                    bool arg1rm = reverseMapping.ContainsKey(arg1v.name);
                    if (arg0rm && !arg1rm)
                        addMapping(fae.arguments[1], new Representative(arg0v, true));
                    else if (arg1rm && !arg0rm)
                        addMapping(fae.arguments[0], new Representative(arg1v, true));
                    else
                        //Arbitrary choice
                        addMapping(fae.arguments[1], new Representative(arg0v, true));
                    return;
                }
            }
        }

        //////////////////////////////////////////////////////////////////
        private void assumeConjunction(FAE fae)
        {
            Debug.Assert(fae.arguments.count == 2);
            assume(fae.arguments[0]);
            assume(fae.arguments[1]);
        }

        //////////////////////////////////////////////////////////////////
        private void assumeNegation(FAE fae)
        {
            setMapping(fae.arguments[0],
                       new Representative(new BasicLiteralExpression(BooleanValue.makeBooleanValue(false)), true));
        }

        //////////////////////////////////////////////////////////////////
        private void assume(FAE fae)
        {
            if (BFunction.isEquality(fae.function))
                assumeEquality(fae);

            if (BFunction.isConjunction(fae.function))
                assumeConjunction(fae);

            if (BFunction.isNegation(fae.function))
                assumeNegation(fae);

            addFact(fae);
        }

        //////////////////////////////////////////////////////////////////
        private static bool isNegation(Expression e)
        {
            return
                e is FAE
                && BFunction.isNegation((e as FAE).function);
        }

        ////////////////////////////////////////////////////////////////////////////
        private int getIndex(Expression expression)
        {
            return conditionVariableIndices[expression.ToString()];
        }

        //////////////////////////////////////////////////////////////////
        private bool areUnequal(Expression arg1, Expression arg2)
        {
            bool result =
                (arg1.type.ToStringN() != arg2.type.ToStringN() && arg1.type.isGround &&
                 arg2.type.isGround)
                || (arg1.type.ToStringN() == arg2.type.ToStringN() &&
                    (
                        isFact(makeInequality(arg1, arg2))
                        ||
                        isFact(makeInequality(arg2, arg1))
                    )
                   );
            return result;
        }

        //////////////////////////////////////////////////////////////////
        private Expression makeInequality(Expression arg1, Expression arg2)
        {
//            Debug.Assert(arg1.type.ToString() == arg2.type.ToString());
//            Debug.Assert(arg1.type.ToStringExpanded() == arg2.type.ToStringExpanded());
            return (
                       new BasicFAE(
                           notFunction,
                           new ExpressionList(
                               new BasicFAE(
                                   BFunction.eq(arg1.type),
                                   new ExpressionList(arg1, arg2)
                                   )
                               )
                           )
                   );
        }

        //////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////
        //Maps
        ////////////////////////////////////////////////////////////////////////////
        private Expression simplifyMapRead(FAE e)
        {
            Debug.Assert(BFunction.isMapRead(e.function));
            Expression map = e.arguments[0];

            FAE result = e;

            if (map is ProgramVariableExpression)
            {
                string mapName = map.ToString();
                if (!mapIncarnationMap.ContainsKey(mapName))
                    getMapIncarnation(map, new PropositionalFormula(true));

                ExpressionList lui = makeMapReadIndices(e);


                Expression ni = mapIncarnationMap[mapName].getEarliestIncarnation(lui,
                                                                                  new PropositionalFormula(
                                                                                      additionalConditions));
                if (ni.ToString() != mapName && ni is ProgramVariableExpression) //Same incarnation or not m variable
                {
                    var args = new List<Expression>();
                    args.Add(ni);
                    for (int i = 1; i < e.arguments.count; i++)
                        args.Add(e.arguments[i]);
                    result = new BasicFAE(e.function, new ExpressionList(args));
                }
            }

            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        private ExpressionList makeMapReadIndices(FAE e)
        {
            var a = new List<Expression>();
            for (int i = 1; i < e.arguments.count; i++)
                a.Add(e.arguments[i]);
            return new ExpressionList(a);
        }

        ///////////////////////////////////////////////
        private MapIncarnation getMapIncarnation(Expression i, PropositionalFormula condition)
        {
            MapIncarnation result = null;
            Debug.Assert(i != null);
            if (mapIncarnationMap.TryGetValue(i.ToString(), out result))
                return result;

            //TODO:for maps
            //            Expression sourceExpression = null;

            AssignmentMapEntry phiFunction = assignmentMap.lookup(i.ToString(), condition);

            if (phiFunction.assignments.Count == 0 ||
                (phiFunction.assignments.Count == 1 && !isMapWrite(phiFunction.assignments.First().Value.expression)))
                result = new InitialMapIncarnation(this, i);
            else if (phiFunction.assignments.Count == 1 && isMapWrite(phiFunction.assignments.First().Value.expression))
            {
                var fae = phiFunction.assignments.First().Value.expression as FAE;
                getMapIncarnation(fae.arguments[0], phiFunction.assignments.First().Value.condition);
                result = new FieldWriteMapIncarnation(this, i, fae);
            }
            else
            {
                Debug.Assert(phiFunction.assignments.Count > 1);
                var predecessorMapIncarnations = new List<Tuple<MapIncarnation, PropositionalFormula>>();
                foreach (var a in phiFunction.assignments)
                    predecessorMapIncarnations.Add(
                        new Tuple<MapIncarnation, PropositionalFormula>(
                            a.Value.expression != null
                                ? getMapIncarnation(a.Value.expression, a.Value.condition)
                                : null,
                            a.Value.condition
                            )
                        );

                result = new JoinMapIncarnation(this, i, predecessorMapIncarnations);
            }
            Debug.Assert(result != null);
            mapIncarnationMap[i.ToString()] = result;

            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        private static bool isMapWrite(Expression e)
        {
            var fae = e as FAE;
            if (fae == null)
                return false;

            return BFunction.isMapWrite(fae.function);
        }

        #region Nested type: AssignmentEntry

        public class AssignmentEntry
        {
            public readonly PropositionalFormula condition;
            public readonly Expression expression;
            public readonly string name;

            public AssignmentEntry(string name, Expression expression, PropositionalFormula condition)
            {
                this.name = name;
                this.expression = expression;
                this.condition = new PropositionalFormula(condition);
            }

            public AssignmentEntry(AssignmentEntry other)
            {
                name = other.name;
                expression = (other.expression == null)
                                 ? null
                                 : other.expression.substitute(new ExpressionSubstitution());
                condition = new PropositionalFormula(other.condition);
            }

            public void merge(AssignmentEntry other)
            {
                Debug.Assert(other.name == name);
                Debug.Assert((expression == null && other.expression == null) ||
                             (other.expression.ToString() == expression.ToString()));
                condition.orWith(other.condition);
            }

            public string key()
            {
                return expression == null ? "" : expression.ToString();
            }
        }

        #endregion

        //////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////

        //////////////////////////////////////////////////////////////////////////////

        #region Nested type: AssignmentMap

        public class AssignmentMap
        {
            public readonly PropositionalFormula condition;
            public readonly Dictionary<string, AssignmentMapEntry> map;
            private readonly IEnumerable<AssignmentMap> predecessors;

            public AssignmentMap(PropositionalFormula condition)
            {
                this.condition = new PropositionalFormula(condition);
                map = new Dictionary<string, AssignmentMapEntry>();
                predecessors = new List<AssignmentMap>();
            }

            public AssignmentMap(PropositionalFormula condition, IEnumerable<AssignmentMap> predecessors)
            {
                this.condition = new PropositionalFormula(condition);
                map = new Dictionary<string, AssignmentMapEntry>();
                this.predecessors = predecessors;
/*
                var keys = new HashSet<string>();
                foreach (var p in predecessors)
                    keys.UnionWith(p.map.Keys);

                foreach (var k in keys)
                {
                    var e = new AssignmentMapEntry(k);
                    map[k] = e;

                    foreach (var p in predecessors)
                    {
                        AssignmentMapEntry pe = null;
                        if (p.map.TryGetValue(k, out pe))
                            e.merge(pe);
                        else
                        {
                            AssignmentEntry ne = null;
                            if (e.assignments.TryGetValue("", out ne))
                                ne.condition.orWith(p.condition);
                            else
                            {
                                ne = new AssignmentEntry("", null, new PropositionalFormula(p.condition));
                                e.assignments.Add(ne.key(), ne);
                            }
                        }
                    }
                }*/
            }

            //////////////////////////////////////////////////////////////////////////////
            public AssignmentMapEntry tickle(string name)
            {
                AssignmentMapEntry ame = null;
                if (!map.TryGetValue(name, out ame))
                {
                    ame = new AssignmentMapEntry(name);
                    map[name] = ame;

                    //lookup predecessors
                    foreach (var p in predecessors)
                    {
                        AssignmentMapEntry pe = null;
                        if (p.map.TryGetValue(name, out pe))
                            ame.merge(pe);
                        else
                        {
                            AssignmentEntry ne = null;
                            if (!ame.assignments.TryGetValue("", out ne))
                            {
                                ne = new AssignmentEntry("", null, new PropositionalFormula(true));
                                ame.assignments[ne.key()] = ne;
                            }

                            ne.condition.orWith(p.condition);
                        }
                    }
                }
                Debug.Assert(ame != null);
                return ame;
            }

            //////////////////////////////////////////////////////////////////////////////
            public AssignmentMapEntry lookup(string name, PropositionalFormula condition)
            {
                var result = new AssignmentMapEntry(name);
                AssignmentMapEntry ame = tickle(name);
                {
                    foreach (var a in ame.assignments)
                    {
                        PropositionalFormula cc = a.Value.condition & condition;
                        if (!cc.isFalse)
                        {
                            var nae = new AssignmentEntry(name, a.Value.expression, cc);
                            result.assignments.Add(nae.key(), nae);
                        }
                    }
                }

                return result;
            }

            internal void addIfNotAssigned(string name, Expression value)
            {
                AssignmentMapEntry ame = tickle(name);
                if (ame.assignments.Count > 1 || (ame.assignments.Count > 0 && ame.assignments.First().Value != null))
                    //A value already exists
                    return;

                var nae = new AssignmentEntry(name, value.substitute(new ExpressionSubstitution()), condition);
                ame.assignments.Add(nae.key(), nae);
            }
        }

        #endregion

        //////////////////////////////////////////////////////////////////////////////

        #region Nested type: AssignmentMapEntry

        public class AssignmentMapEntry
        {
            public readonly Dictionary<string, AssignmentEntry> assignments;
            public readonly string name;

            public AssignmentMapEntry(string name)
            {
                this.name = name;
                assignments = new Dictionary<string, AssignmentEntry>();
            }

            public void merge(AssignmentMapEntry other)
            {
                Debug.Assert(other.name == name);
                foreach (var a in other.assignments)
                {
                    AssignmentEntry e = null;
                    if (assignments.TryGetValue(a.Key, out e))
                        e.merge(a.Value);
                    else
                    {
                        e = new AssignmentEntry(a.Value);
                        assignments.Add(e.key(), e);
                    }
                }
            }
        }

        #endregion

        #region Nested type: BinaryIntegerOperator

        private delegate BigInteger BinaryIntegerOperator(BigInteger x, BigInteger y);

        #endregion

        #region Nested type: MappingCacheEntry

        private class MappingCacheEntry
        {
            private readonly Dictionary<string, Representative> cache;
            public readonly Dictionary<string, Tuple<Representative, PropositionalFormula>> candidates;

            public MappingCacheEntry()
            {
                cache = new Dictionary<string, Representative>();
                candidates = new Dictionary<string, Tuple<Representative, PropositionalFormula>>();
            }

            public MappingCacheEntry(Representative rep, PropositionalFormula condition)
                : this()
            {
                addCandidate(rep, condition);
            }

            public MappingCacheEntry(IEnumerable<MappingCacheEntry> predecessors)
                : this()
            {
                foreach (var p in predecessors)
                    foreach (var c in p.candidates)
                        addCandidate(c.Value.Item1, c.Value.Item2);
            }

            public override string ToString()
            {
                string result = "{";
                foreach (var c in candidates)
                    result += " " + c.Value;
                result += " }";
                return result;
            }

            private string getKey(Representative v)
            {
                return (v != null) ? v.term.name : "";
            }

            private void addCandidate(Representative rep, PropositionalFormula condition)
            {
                Tuple<Representative, PropositionalFormula> c = null;
                if (candidates.TryGetValue(getKey(rep), out c))
                    c.Item2.orWith(condition);
                else
                    candidates.Add(getKey(rep), new Tuple<Representative, PropositionalFormula>(rep, condition));
            }

            internal Representative getRep(PropositionalFormula condition)
            {
                Representative result = null;
                if (cache.TryGetValue(condition.ToString(), out result))
                {
                    return result;
                }
                if (candidates.Count == 1)
                {
                    result = candidates.First().Value.Item1;
                }
                else
                {
                    foreach (var c in candidates)
                        if (!(c.Value.Item2 & condition).isFalse) //relevant predecessor
                            if (c.Value.Item1 == null)
                            {
                                //no rep
                                result = null;
                                break;
                            }
                            else if (result == null)
                                result = c.Value.Item1; //no prev rep - this one is first
                            else if (c.Value.Item1.ToString() != result.ToString()) //different rep from current
                            {
                                result = null;
                                break;
                            }
                }

                cache.Add(condition.ToString(), result);
                return result;
            }
        }

        #endregion

        #region Nested type: Representative

        public class Representative
        {
            ///////////////////////////////////////////////////////////////////////

            ///////////////////////////////////////////////////////////////////////
            public Representative(bool polarity)
            {
                Debug.Assert(!(term is LiteralExpression) || polarity);
                term = new BasicLiteralExpression(BooleanValue.makeBooleanValue(polarity));
                this.polarity = true;
            }

            ///////////////////////////////////////////////////////////////////////
            public Representative(FreeAtomicExpression term, bool polarity)
            {
                Debug.Assert(!(term is LiteralExpression) || polarity);
                this.term = term;
                this.polarity = polarity;
            }

            ///////////////////////////////////////////////////////////////////////
            public Representative(ProgramVariable v, bool polarity)
            {
                term = new BasicProgramVariableExpression(v);
                this.polarity = polarity;
            }

            public Expression expression
            {
                get
                {
                    if (polarity)
                        return term;
                    else
                        return new BasicFAE(BFunction.not, new ExpressionList(term));
                }
            }

            public bool polarity { get; private set; }
            public FreeAtomicExpression term { get; private set; }

            public Representative getNegation()
            {
                if ((term is LiteralExpression))
                    return
                        new Representative(
                            new BasicLiteralExpression(
                                BooleanValue.makeBooleanValue(!((term as LiteralExpression).value as BooleanValue).value)),
                            true);

                return new Representative(term, !polarity);
            }

            ///////////////////////////////////////////////////////////////////////
            public override string ToString()
            {
                return expression.ToString();
            }
        }

        #endregion

        #region Nested type: ReverseMapEntry

        private class ReverseMapEntry
        {
            public readonly List<Expression> entries;
            public readonly Representative rep;

            public ReverseMapEntry(Representative rep)
            {
                Debug.Assert(rep != null);
                this.rep = rep;
                entries = new List<Expression>();
            }

            public void addEntry(Expression e)
            {
                Debug.Assert(e != null);
                entries.Add(e.substitute(new ExpressionSubstitution()));
            }

            //            public Dictionary<string, Expression> entryMap;
        }

        #endregion

        //////////////////////////////////////////////////////////////////////////////
    }
}