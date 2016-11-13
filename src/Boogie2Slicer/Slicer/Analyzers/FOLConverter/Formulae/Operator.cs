#region

using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.Contracts;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface IOperator 
    {
        ITypeTuple argumentTypes { get; }
        string name { get; }
        string nameN { get; }

        string ToString(IEnumerable<LogicElement> arguments);   //Prettyprint
        string ToString(IEnumerable<LogicElement> arguments, IDictionary<LVar, string> varMap);   //Prettyprint - variable renaming
        string ToStringN(IEnumerable<LogicElement> arguments);  //Prettyprint in normalized form without variable renaming
        string ToStringN(IEnumerable<LogicElement> arguments, IDictionary<LVar, string> varMap);  //Prettyprint in normalized form - ensures different instances are unique
        string ToStringN(IEnumerable<string> argStrings);   //Prettyprint

        bool isInterpreted { get; }
    }

    public abstract class Operator : IOperator
    {
        #region creation

        protected Operator(string name, string nameN, IEnumerable<IType> argumentTypes)
        {
            Debug.Assert(name != null);
            Debug.Assert(!name.Contains('!'));
            this.name = name;
            this.nameN = nameN;
            this.argumentTypes = TypeTuple.make(argumentTypes);
        }
        #endregion creation

        #region properties
        public abstract bool isInterpreted { get; }
        public ITypeTuple argumentTypes { get; private set; }
        public string              name { get; private set; }
        public string              nameN { get; private set; }
        #endregion properties

        #region strings

        private static readonly HashSet<string> infixBinaryFunctionNames = new HashSet<string> { "<", "<=", ">", ">=", "<:", "+", "-", "*", "/", "%", "++" };

        public string ToString(IEnumerable<LogicElement> arguments)
        {
            if (isMapWriteSpecialCase(arguments)) return makeMapWriteSpecialCaseString(arguments);
            return ToString(from a in arguments select a.ToString());
        }

        public string ToString(IEnumerable<LogicElement> arguments, IDictionary<LVar, string> varMap)
        {
            if (isMapWriteSpecialCase(arguments)) return makeMapWriteSpecialCaseString(arguments, varMap);
            return ToString(from a in arguments select a.ToString(varMap));
        }

        public string ToStringN(IEnumerable<LogicElement> arguments, IDictionary<LVar, string> varMap)
        {
            return ToStringN(from a in arguments select a.ToStringN(varMap));
        }

        public string ToStringN(IEnumerable<LogicElement> arguments)
        {
            return ToStringN(from a in arguments select a.ToStringN());
        }

        public string ToStringB(IEnumerable<LogicElement> arguments)
        {
            return ToString(from a in arguments select a.ToStringB());
        }

        public override string ToString()
        {
            return name;
        }

        public virtual string ToString(IEnumerable<string> argumentsStrings)
        {
            if (isInfixBinaryOperator())
                return infixBinaryOperatorToString(name,argumentsStrings);
            else if (isUnaryPrefixOperator())
                return unaryOperatorToString(name,argumentsStrings);
            else if (isMapRead)
                return mapReadToString(argumentsStrings);
            else if (isMapWrite)
                return mapWriteToString(argumentsStrings);
            return name + (argumentsStrings.Any() ? "(" + commaSeparatedList(argumentsStrings) + ")" : "");
        }
        public virtual string ToStringN(IEnumerable<string> argumentStrings)
        {
            if (isInfixBinaryOperator())
                return infixBinaryOperatorToString(nameN, argumentStrings);
            else if (isUnaryPrefixOperator())
                return unaryOperatorToString(nameN, argumentStrings);
            else
                return nameN + "(" + commaSeparatedList(argumentStrings) + ")";
        }
        public virtual bool isMapRead {
            get
            {
                return name.StartsWith("MapRead");
            }
        }
        public virtual bool isMapWrite
        {
            get
            {
                return name.StartsWith("MapWrite");
            }
        }
        private bool isMapWriteSpecialCase(IEnumerable<LogicElement> arguments)
        { //h[r,f := h[r,f][p:=x]]
            if (!isMapWrite)
                return false;
            var al = arguments.Last() as FunctionApplicationFormula;
            if (al==null)
                return false;
            if (!al.function.name.StartsWith("MapWrite"))
                return false;
            var alf = al.args.First() as FunctionApplicationFormula;
            var mlName = "MapRead"+name.Substring("MapWrite".Length);
            if (alf==null || alf.function.name != mlName)
                return false;
            Debug.Assert(alf.args.Count() == arguments.Count()-1);
            if (!alf.args.Zip(arguments.Take(arguments.Count()-1),(a1,a2)=>a1.Equals(a2)).All(x=>x))
                return false;
            return true;
        }
        private string makeMapWriteSpecialCaseString(IEnumerable<LogicElement> arguments)
        {
            return makeMapWriteSpecialCaseString(arguments, e => e.ToString());
        }
        private string makeMapWriteSpecialCaseString(IEnumerable<LogicElement> arguments, IDictionary<LVar, string> varMap)
        {
            return makeMapWriteSpecialCaseString(arguments, e => e.ToString(varMap));
        }
        private string makeMapWriteSpecialCaseString(IEnumerable<LogicElement> arguments, Stringer stringer)
        {   //h[r,f := h[r,f][p:=x           ]]  =>  h[r,f[p:=x] 
            //h[r,f := h[r,f][p:=h[r,f][p]+x]]]  =>  h[r,f[p+:=x]]
            var map = arguments.First();
            var indices = arguments.Skip(1).Take(arguments.Count() - 2);
            var mu2 = (arguments.Last() as FunctionApplicationFormula);
            var ml1 = mu2.args.First() as FunctionApplicationFormula;
            var mu2args = mu2.args;
            var mu2indices = mu2args.Skip(1).Take(mu2args.Count() - 2);
            var mu2val = mu2args.Last();
            var mu2valAsFA = mu2val as FunctionApplicationFormula;

            if (mu2valAsFA!=null && isInfixBinaryOperator(mu2valAsFA.function))
            {
                var mlName = "MapRead" + name.Substring("MapWrite".Length);
                var ml2Name = "MapRead" + mu2.function.name.Substring("MapWrite".Length);
                var ml2 = mu2valAsFA.args.First() as FunctionApplicationFormula;
                var ml3   = ml2==null ? ml2 :( ml2.args.Any() ? ml2.args.First() as FunctionApplicationFormula : null);
                if (
                    ml3 != null && 
                    ml2.function.name == ml2Name && 
                    ml3.function.name == mlName && 
                    ml3.args.Zip(ml1.args,(a1,a2)=>a1.Equals(a2)).All(x=>x) &&
                    ml2.args.Skip(1).Zip(mu2indices,(a1,a2)=>a1.Equals(a2)).All(x=>x)
                    )
                    return
                        map + "[" +
                        commaSeparatedList(from i in indices select stringer(i)) +
                        "[" +
                        commaSeparatedList(from i in mu2indices select stringer(i)) +
                        mu2valAsFA.function.name + ":= " + 
                        stringer(mu2valAsFA.args[1]) +
                        "]" +
                        "]";
            }
            return
                map + "[" +
                commaSeparatedList(from i in indices select stringer(i)) +
                "[" +
                commaSeparatedList(from i in mu2indices select stringer(i)) +
                " := " +
                stringer(mu2val) +
                "]" +
                "]";
        }
        protected virtual bool isUnaryPrefixOperator()
        {
            return
                argumentTypes.Count() == 1 &&
                (name == "-")
                ;
        }
        protected static bool isInfixBinaryOperator(Operator op)
        {
            return infixBinaryFunctionNames.Contains(op.name);
        }

        protected virtual bool isInfixBinaryOperator()
        {
            return isInfixBinaryOperator(this);
        }

        public static string commaSeparatedList(IEnumerable<string> args)
        {
            return args.Aggregate("",(s,a)=>s+(s.Any()?",":"")+a);
        }

        public static string mapReadToString(IEnumerable<string> argStrings)
        {
            return argStrings.First() + "[" + commaSeparatedList(argStrings.Skip(1)) + "]";
        }

        public static string mapWriteToString(IEnumerable<string> argStrings)
        {
            return argStrings.First() + "[" + commaSeparatedList(argStrings.Skip(1).Take(argStrings.Count()-2)) + " := " + argStrings.Last() + "]";
        }

        public static string unaryOperatorToString(string opName,IEnumerable<string> argStrings)
        {
            Debug.Assert(argStrings.Count() == 1);
            return opName + argStrings.First();
        }

        public static string infixBinaryOperatorToString(string opName, IEnumerable<string> argStrings)
        {
            Debug.Assert(argStrings.Count() == 2);
            return "(" + argStrings.First() + opName + argStrings.Last() + ")";
        }

        delegate string Stringer(LogicElement e);

        #endregion strings
    }
}