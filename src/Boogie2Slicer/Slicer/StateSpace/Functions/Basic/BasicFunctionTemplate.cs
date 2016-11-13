using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Quantification.Basic;

namespace Slicer.StateSpace.Functions.Basic
{
    internal class BFunctionTemplate : FunctionTemplate
    {
        public static string iteName = @"if-then-else";
        private static readonly BooleanType bt = BooleanType.booleanType;
        private static readonly IntegerType it = IntegerType.integerType;

        public static readonly BFunctionTemplate minus = new BFunctionTemplate("-", "", new TypeVariable[0],
                                                                                       new BasicFunctionSignature(
                                                                                           IntegerType.integerType,
                                                                                           new IType[2] {it, it}),
                                                                                       null);

        public static readonly BFunctionTemplate plus = new BFunctionTemplate("+", "", new TypeVariable[0],
                                                                                      new BasicFunctionSignature(
                                                                                          IntegerType.integerType,
                                                                                          new IType[2] {it, it}),
                                                                                      null);

        public static readonly BFunctionTemplate mul = new BFunctionTemplate("*", "", new TypeVariable[0],
                                                                                     new BasicFunctionSignature(
                                                                                         IntegerType.integerType,
                                                                                         new IType[2] {it, it}), null);

        public static readonly BFunctionTemplate div = new BFunctionTemplate("div", "", new TypeVariable[0],
                                                                                     new BasicFunctionSignature(
                                                                                         IntegerType.integerType,
                                                                                         new IType[2] {it, it}), null);

        public static readonly BFunctionTemplate mod = new BFunctionTemplate("mod", "", new TypeVariable[0],
                                                                                     new BasicFunctionSignature(
                                                                                         IntegerType.integerType,
                                                                                         new IType[2] {it, it}), null);

        public static readonly BFunctionTemplate lt = new BFunctionTemplate("<", "", new TypeVariable[0],
                                                                                    new BasicFunctionSignature(
                                                                                        BooleanType.booleanType,
                                                                                        new IType[2] {it, it}), null);

        public static readonly BFunctionTemplate le = new BFunctionTemplate("<=", "", new TypeVariable[0],
                                                                                    new BasicFunctionSignature(
                                                                                        BooleanType.booleanType,
                                                                                        new IType[2] {it, it}), null);

        public static readonly BFunctionTemplate gt = new BFunctionTemplate(">", "", new TypeVariable[0],
                                                                                    new BasicFunctionSignature(
                                                                                        BooleanType.booleanType,
                                                                                        new IType[2] {it, it}), null);

        public static readonly BFunctionTemplate ge = new BFunctionTemplate(">=", "", new TypeVariable[0],
                                                                                    new BasicFunctionSignature(
                                                                                        BooleanType.booleanType,
                                                                                        new IType[2] {it, it}), null);

        public static readonly BFunctionTemplate not = new BFunctionTemplate("!", "", new TypeVariable[0],
                                                                                     new BasicFunctionSignature(
                                                                                         BooleanType.booleanType,
                                                                                         new IType[1] {bt}), null);

        public static readonly BFunctionTemplate and = new BFunctionTemplate("&&", "", new TypeVariable[0],
                                                                                     new BasicFunctionSignature(
                                                                                         BooleanType.booleanType,
                                                                                         new IType[2] {bt, bt}), null);

        public static readonly BFunctionTemplate or = new BFunctionTemplate("||", "", new TypeVariable[0],
                                                                                    new BasicFunctionSignature(
                                                                                        BooleanType.booleanType,
                                                                                        new IType[2] {bt, bt}), null);

        public static readonly BFunctionTemplate implication = new BFunctionTemplate("==>", "",
                                                                                             new TypeVariable[0],
                                                                                             new BasicFunctionSignature(
                                                                                                 BooleanType.booleanType,
                                                                                                 new IType[2]
                                                                                                     {bt, bt}), null);

        public static readonly BFunctionTemplate equivalence = new BFunctionTemplate("<==>", "",
                                                                                             new TypeVariable[0],
                                                                                             new BasicFunctionSignature(
                                                                                                 BooleanType.booleanType,
                                                                                                 new IType[2]
                                                                                                     {bt, bt}), null);

        private readonly Dictionary<string, BasicFunctionTemplateInstance> instances;

        static BFunctionTemplate()
        {
            {
                var X = new BasicTypeVariable("X==");
                var XT = new VariableType(X);
                eq = new BFunctionTemplate("==", "", new TypeVariable[1] {X},
                                               new BasicFunctionSignature(bt, new IType[2] {XT, XT}), null);
            }

            {
                var X = new BasicTypeVariable("X==<>");
                var Y = new BasicTypeVariable("Y==<>");
                var XT = new VariableType(X);
                var YT = new VariableType(Y);
                eqG = new BFunctionTemplate("==<>", "", new TypeVariable[2] {X, Y},
                                                new BasicFunctionSignature(bt, new IType[2] {XT, YT}), null);
            }

            {
                var X = new BasicTypeVariable("X<:");
                var XT = new VariableType(X);
                po = new BFunctionTemplate("<:", "", new TypeVariable[1] {X},
                                               new BasicFunctionSignature(bt, new IType[2] {XT, XT}), null);
            }

            {
                var X = new BasicTypeVariable("Xite");
                var XT = new VariableType(X);
                BooleanType BT = BooleanType.booleanType;
                ite = new BFunctionTemplate(iteName, "", new TypeVariable[1] {X},
                                                new BasicFunctionSignature(XT, new IType[3] {BT, XT, XT}), null);
            }
        }

        public BFunctionTemplate(
            string name,
            string attributes,
            TypeVariable[] typeParameters,
            FunctionSignature signature,
            FunctionBody body
            )
        {
            Debug.Assert(name != null);
            Debug.Assert(typeParameters != null);
            Debug.Assert(signature != null);


            this.name = name;
            this.typeParameters = typeParameters;
            this.signature = signature;
            instances = new Dictionary<string, BasicFunctionTemplateInstance>();
            this.body = body;
            this.attributes = attributes;
        }

        public static BFunctionTemplate eq { get; private set; }
        public static BFunctionTemplate eqG { get; private set; }

        public static BFunctionTemplate po { get; private set; }

        public static BFunctionTemplate ite { get; private set; }

        #region FunctionTemplate Members

        public TypeVariable[] typeParameters { get; private set; }
        public FunctionSignature signature { get; private set; }

        public string name { get; private set; }
        public FunctionBody body { get; set; }

        public string attributes { get; private set; }

        public Function getInstance(ITypeTuple typeArguments)
        {
            Debug.Assert(typeArguments.Count() == typeParameters.Length);
            BasicFunctionTemplateInstance result = null;
            bool foundInstance = instances.TryGetValue(getInstantiationString(typeArguments), out result);
            if (result != null)
            {
                for (int i = 0; i < typeArguments.Count(); i++)
                    if (!ReferenceEquals(typeArguments[i], result.typeArguments[i]))
                    {
                        foundInstance = false;
                        break;
                    }
            }

            if (!foundInstance)
            {
                result = new BasicFunctionTemplateInstance(this, typeArguments);
            }
            return result;
        }

        #endregion

        public Function getInstance()
        {
            return getInstance(TypeTuple.make());
        }

        private string getInstantiationString(ITypeTuple typeArguments)
        {
            string result = "(";
            foreach (var t in typeArguments)
                result += "," + t.ToString();
            result += " )";
            return result;
        }
    }
}