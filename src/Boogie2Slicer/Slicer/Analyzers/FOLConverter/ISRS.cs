#region

using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Programs.Procedures;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables;
using System.Numerics;

#endregion

namespace Slicer.Analyzers.FOLConverter
{
    public static class CSRS
    {
        public const string NPPrefix = @"$NP";
        public static bool isCNFName(IPredicate p) { return isCNFName(p.name); }
        public static bool isCNFName(string n) { return n.StartsWith(CSRS.NPPrefix); }

    }

    public interface ISRS
    {
        IDictionary<string, Dictionary<string, ITypeTuple>> mapReads { get; }
        Procedure procedure { get; }

        IDictionary<string, Predicate> predicateMap { get; }
        IDictionary<string, LVar> lVarMap { get; }
        IDictionary<string, Function> functionMap { get; }
        ClauseSet currentClauseSet { get; }

        Function getFunction(StateSpace.Functions.Function function);
        Function tryGetFunction(StateSpace.Functions.Function function);
        Function getFunction(ProgramVariable programVariable);
        Function tryGetFunction(ProgramVariable programVariable);
        Predicate getPredicate(ProgramVariable programVariable);
        Predicate tryGetPredicate(ProgramVariable programVariable);
        Predicate tryGetPredicate(StateSpace.Functions.Function function);

        Function getFunction(Value value);
        Function integerTimes { get; }
        Function integerPlus { get; }
        Function integerMinus { get; }
        LVar getFreshVariable(string baseName, IType type);
        LVar getFreshVariable(LVar variable);
        IEnumerable<LVar> getFreshVariables(IEnumerable<LVar> fvs);
        Function getFreshFunction(string baseName, ITypeTuple argTypes, IType resultType);
        Predicate getFreshPredicate(string baseName, ITypeTuple argTypes);
        Predicate getPredicate(BooleanValue value);
        Predicate getPredicate(StateSpace.Functions.Function function);

        Function trueFunction { get; }
        Function falseFunction { get; }
        Clause refreshVariables(Clause c);
        Function getMapRead(Function function);

        bool isMapWrite(Function f);
        bool isMapRead(Function f);

        bool isNumber(Function f);
        bool isBooleanLiteral(Function f);
        BigInteger getNumber(Function f);

        Predicate ltPredicate{get;}

        bool isPathCondition(IPredicate predicate);

        bool isLaterPathCondition(IPredicate pc1, IPredicate pc2);

        bool isLessThan(IPredicate predicate);


        //////
        IDictionary<string,Function> expressionStringToBooleanFunctionMap { get; }
        IDictionary<Function, Programs.Expressions.Expression> booleanFunctionToExpressionMap { get; }
    }
}