using System.Collections.Generic;
using System.Diagnostics;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;

namespace Slicer.StateSpace.Functions.Basic
{
    internal abstract class BFunction : Function
    {
        public static readonly Function not = BFunctionTemplate.not.getInstance();
        public static readonly Function and = BFunctionTemplate.and.getInstance();
        public static readonly Function or = BFunctionTemplate.or.getInstance();
        public static readonly Function implication = BFunctionTemplate.implication.getInstance();
        public static readonly Function equivalence = BFunctionTemplate.equivalence.getInstance();

        public bool isITE { get { return name.StartsWith(BFunctionTemplate.iteName); } }
        public BFunction(
            string name,
            IType resultType,
            IEnumerable<IType> argumentTypes
            )
        {
            Debug.Assert(name != null);
            Debug.Assert(resultType != null);
            Debug.Assert(argumentTypes != null);
            foreach (var at in argumentTypes)
                Debug.Assert(at != null);

//            Debug.Assert(name != "true" && name != "True" && name != "false" && name != "False");
            this.name = name;
            this.argumentTypes = TypeTuple.make(argumentTypes);
            this.resultType = resultType;
        }

        #region Function Members

        public abstract Function substitute(TypeParameterInstantiation s);
        public abstract string templateName { get; }
        public abstract string fullName { get; }
        public abstract ITypeTuple typeArguments { get; protected set; }

        public string name { get; private set; }

        public IType resultType { get; private set; }
        public ITypeTuple argumentTypes { get; private set; }

        public ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                ISet<TypeVariable> result = resultType.freeTypeVariables;
                foreach (var at in argumentTypes)
                    result.UnionWith(at.freeTypeVariables);
                return result;
            }
        }

        #endregion

        public override string ToString()
        {
            return name;
        }

        public static Function eq(IType t)
        {
            if (t is BooleanType)
                return equivalence;
            return BFunctionTemplate.eq.getInstance(TypeTuple.make(new [] {t}));
        }

        public static Function eq(IType t1, IType t2)
        {
//urij: special treatment for equality with type quantification
            Debug.Assert(!t1.isGround || !t2.isGround);
            if (t1.ToStringN() == t2.ToStringN())
                return BFunctionTemplate.eq.getInstance(TypeTuple.make(new []{t1}));
            else
                return BFunctionTemplate.eqG.getInstance(TypeTuple.make(new[] {t1, t2}));
        }

        public static bool isMapWrite(Function f)
        {
            return f is MapWrite;
        }

        public static bool isMapRead(Function f)
        {
            return f is MapRead;
        }

        public static bool isEquality(Function f)
        {
            return f.name == "==";
        }

        public static bool isInEquality(Function f)
        {
            return f.name == "!=";
        }

        public static bool isNegation(Function f)
        {
            return f.name == "!";
        }

        public static bool isConjunction(Function f)
        {
            return f.name == "&&";
        }

        public static bool isDisjunction(Function f)
        {
            return f.name == "||";
        }

        public static bool isImplication(Function f)
        {
            return f.name == "==>";
        }

        public static bool isEquivalence(Function f)
        {
            return f.name == "<==>";
        }

        public static bool isCoerce(Function f)
        {
            return f.name == ":";
        }

        public static bool isBinaryLogical(Function f)
        {
            return isConjunction(f) || isDisjunction(f) || isImplication(f) || isEquivalence(f);
        }

        public static bool isUnaryLogical(Function f)
        {
            return isNegation(f);
        }

//        public TypeVariable[] mapTypeArguments { get; set; }
    }
}