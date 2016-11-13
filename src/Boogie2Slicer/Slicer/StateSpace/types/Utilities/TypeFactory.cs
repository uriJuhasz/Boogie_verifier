using System;
using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs;
using Slicer.StateSpace.Types.Quantification.Boogie;
using BoundVariable = Slicer.StateSpace.Variables.Quantification.BoundVariable;
using Type = Microsoft.Boogie.Type;
using TypeVariable = Slicer.StateSpace.Types.Quantification.TypeVariable;

namespace Slicer.StateSpace.Types.Utilities
{
    public class TypeFactory
    {
        private Scope scope;

        public TypeFactory(Scope scope)
        {
            this.scope = scope;
        }

        public IType makeTypeI(Type boogieType, Context context)
        {
            Debug.Assert(boogieType != null);
            IType result;

            var ts = boogieType as TypeSynonymAnnotation;
            TypeConstructorInstance originalType;
            if (ts == null)
                originalType = null;
            else
            {
                TypeConstructor originalConstructor = makeConstructor(ts.Decl.Name, ts.Decl.TypeParameters.Count);
                originalType = new TypeConstructorInstance(originalConstructor, makeTypes(ts.Arguments, context));
            }
//            string originalName = (ts!=null)?ts.ToString():null;

            if (boogieType.IsBool)
                result = BooleanType.booleanType;
            else if (boogieType.IsInt)
                result = IntegerType.integerType;
            else if (boogieType.IsBv)
                result = BitVectorType.makeBitVectorType((boogieType as BvType).BvBits);
            else if (boogieType.IsCtor)
            {
                TypeConstructor constructor = makeConstructor(boogieType.AsCtor.Decl.Name, boogieType.AsCtor.Decl.Arity);
                result = new TypeConstructorInstance(constructor, makeTypes(boogieType.AsCtor.Arguments, context));
            }
            else if (boogieType.IsMap)
            {
                Microsoft.Boogie.MapType bmt = boogieType.AsMap;

                pushTypeVariables(ref context, bmt.TypeParameters);
                result = new MapType(
                    makeTypeVariables(context, bmt.TypeParameters),
                    makeTypes(bmt.Arguments, context),
                    makeTypeI(bmt.Result, context),
                    originalType);
                context.pop();
            }
            else if (boogieType.IsVariable)
                result = new VariableType(context.lookupTypeVariable(boogieType.AsVariable.Name));
            else
                throw new Exception("Unsupported Boogie type:" + boogieType);
            result.check(context);
            return result;
        }

        public static void pushTypeVariables(ref Context context, List<Microsoft.Boogie.TypeVariable> typeVariableSeq)
        {
            context.push();
            for (int i = 0; i < typeVariableSeq.Count; i++)
                context.add(new BoogieTypeVariable(typeVariableSeq[i]));
        }

        public static TypeVariable[] makeTypeVariables(Context context, List<Microsoft.Boogie.TypeVariable> typeVariableSeq)
        {
            var result = new TypeVariable[typeVariableSeq.Count];
            for (int i = 0; i < typeVariableSeq.Count; i++)
            {
                result[i] = context.lookupTypeVariable(typeVariableSeq[i].Name);
                Debug.Assert(result[i] != null);
            }
            return result;
        }

        private TypeConstructor makeConstructor(string name, int arity)
        {
            return new TypeConstructor(name, arity);
        }

        public ITypeTuple makeTypes(IList<Type> boogieTypes, Context context)
        {
            var types = new IType[boogieTypes.Count];
            for (int i = 0; i < boogieTypes.Count; i++)
                types[i] = makeTypeI(boogieTypes[i], context);
            return TypeTuple.make(types);
        }

        #region Nested type: Context

        public class Context
        {
            public Context()
            {
                contextStack = new Stack<ContextFrame>();
                contextStack.Push(new ContextFrame());
            }

            public Stack<ContextFrame> contextStack { get; private set; }

            public void add(TypeVariable v)
            {
                contextStack.Peek().typeVariables.Add(v.name, v);
            }

            public void add(string name, BoundVariable v)
            {
                contextStack.Peek().variables.Add(name, v);
            }

            public void push()
            {
                contextStack.Push(new ContextFrame());
            }

            public void pop()
            {
                Debug.Assert(contextStack.Count > 1);
                contextStack.Pop();
            }

            public TypeVariable lookupTypeVariable(string name)
            {
                int i = contextStack.Count;
                TypeVariable result = null;
                foreach (var f in contextStack)
                    if (f.typeVariables.TryGetValue(name, out result))
                        return result;
                return null;
            }

            public BoundVariable lookupVariable(string name)
            {
                int i = contextStack.Count;
                BoundVariable result = null;
                foreach (var f in contextStack)
                    if (f.variables.TryGetValue(name, out result))
                        return result;
                return null;
            }


            internal BoundVariable lookupVariableByOwnName(string p)
            {
                int i = contextStack.Count;
                foreach (var f in contextStack)
                    foreach (var v in f.variables.Values)
                        if (v.name == p)
                            return v;
                return null;
            }

            #region Nested type: ContextFrame

            public class ContextFrame
            {
                public readonly Dictionary<string, TypeVariable> typeVariables = new Dictionary<string, TypeVariable>();
                public readonly Dictionary<string, BoundVariable> variables = new Dictionary<string, BoundVariable>();
            }

            #endregion
        }

        #endregion
    }
}