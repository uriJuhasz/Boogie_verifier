using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Quantification.Basic;
using Slicer.StateSpace.Types.Utilities;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Variables.Quantification;
using Slicer.StateSpace.Variables.Quantification.Basic;

namespace Slicer.Programs
{
    ///////////////////////////////////////////////////////////////////////
    internal abstract class ScopeImp : Scope
    {
        public abstract string getVarUName(Microsoft.Boogie.Variable v);
        private const string oldPrefix = "$old_";
        private readonly Dictionary<string, BoundVariable> boundVariableMap = new Dictionary<string, BoundVariable>();
        private readonly Dictionary<string, FunctionTemplate> myFunctionTemplates;
        private readonly Dictionary<String, Procedure> procedureMap;
        private readonly Dictionary<string, FunctionTemplate> standardFunctionTemplates;
        private readonly Dictionary<string, TypeConstructor> typeConstructorMap;
        private readonly Dictionary<string, TypeSynonym> typeMap;
        private readonly Dictionary<string, TypeVariable> typeVariableMap = new Dictionary<string, TypeVariable>();
        private readonly Dictionary<String, ProgramVariable> variableMap;

        protected ScopeImp(Scope parentScope)
        {
            this.parentScope = parentScope;
            variableMap = new Dictionary<string, ProgramVariable>();
            procedureMap = new Dictionary<string, Procedure>();
            typeConstructorMap = new Dictionary<string, TypeConstructor>();
//            freshProgramVariableIndex = 0;

//            freshBoundVariableIndex = 0;

            myFunctionTemplates = new Dictionary<string, FunctionTemplate>();

            typeFactory = new TypeFactory(this);
            expressionFactory = new ExpressionFactory(this);

            if (parentScope == null)
            {
                typeMap = new Dictionary<string, TypeSynonym>();
                typeMap["Integer"] = new TypeSynonym("Integer", new TypeVariable[0], IntegerType.integerType);
                typeMap["Boolean"] = new TypeSynonym("Boolean", new TypeVariable[0], BooleanType.booleanType);

                standardFunctionTemplates = new Dictionary<string, FunctionTemplate>();
//                standardFunctionTemplates.Add("!=" , BasicFunctionTemplate.ne);
                standardFunctionTemplates.Add("==", BFunctionTemplate.eq);
                standardFunctionTemplates.Add("==<>", BFunctionTemplate.eqG);

                standardFunctionTemplates.Add(BFunctionTemplate.iteName, BFunctionTemplate.ite);

                standardFunctionTemplates.Add("<:", BFunctionTemplate.po);

                standardFunctionTemplates.Add("!", BFunctionTemplate.not);
                standardFunctionTemplates.Add("&&", BFunctionTemplate.and);
                standardFunctionTemplates.Add("||", BFunctionTemplate.or);
                standardFunctionTemplates.Add("==>", BFunctionTemplate.implication);
                standardFunctionTemplates.Add("<==>", BFunctionTemplate.equivalence);

                standardFunctionTemplates.Add("+", BFunctionTemplate.plus);
                standardFunctionTemplates.Add("-", BFunctionTemplate.minus);
                standardFunctionTemplates.Add("*", BFunctionTemplate.mul);
                standardFunctionTemplates.Add("div", BFunctionTemplate.div);
                standardFunctionTemplates.Add("mod", BFunctionTemplate.mod);

                standardFunctionTemplates.Add("<", BFunctionTemplate.lt);
                standardFunctionTemplates.Add(">", BFunctionTemplate.gt);
                standardFunctionTemplates.Add("<=", BFunctionTemplate.le);
                standardFunctionTemplates.Add(">=", BFunctionTemplate.ge);
            }
            else
            {
                typeMap = null;
            }
        }

        protected ICollection<ProgramVariable> variables
        {
            get { return variableMap.Values; }
        }

        ///////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////

        #region Scope Members

        public ProgramVariable tryFindVariable(string name)
        {
            ProgramVariable result = null;
            variableMap.TryGetValue(name, out result);
#if DEBUG
//            if (name.StartsWith(@"call5"))
//                Debugger.Break();
#endif
            if (result == null && parentScope != null)
                result = parentScope.tryFindVariable(name);
            //            Debug.Assert(result != null);
            return result;
        }

        ///////////////////////////////////////////////////////////////////////
        public ProgramVariable findVariable(string name)
        {
            ProgramVariable result = tryFindVariable(name);
            Debug.Assert(result != null);
            return result;
        }

        ///////////////////////////////////////////////////////////////////////
/*        public void addVariable(Scope scope,Microsoft.Boogie.NamedDeclaration d, bool isInput, bool isOutput, bool isGlobal, bool isConstant)
        {
//            addVariable(new ProgramVariable(d.Name,makeType())
        }*/
        public void addVariable(ProgramVariable variable)
        {
            if (variableMap.ContainsKey(variable.name))
                return;
            Debug.Assert(!variableMap.ContainsKey(variable.name));
#if DEBUG
//            if (variable.name.StartsWith(@"call5"))
//                Debugger.Break();
#endif
            variableMap[variable.name] = variable;
//            if (variable.isInput)
//                addInitialIncarnation(variable);
        }

        ///////////////////////////////////////////////////////////////////////
        public void removeVariable(string name)
        {
            if (variableMap.ContainsKey(name))
                variableMap.Remove(name);
            else
                parentScope.removeVariable(name);
        }

        ///////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////
        public ProgramVariable findOldVersion(string name)
        {
            return findVariable(oldName(name));
        }

        ///////////////////////////////////////////////////////////////////////
        public bool isOld(string name)
        {
            return isOldName(name);
        }

        ///////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////
        public ICollection<ProgramVariable> inputs
        {
            get { return (from v in variables where v.isInput select v).ToList(); }
        }

        ///////////////////////////////////////////////////////////////////////
        public ICollection<ProgramVariable> outputs
        {
            get { return (from v in variables where v.isOutput select v).ToList(); }
        }

        ///////////////////////////////////////////////////////////////////////
        public ICollection<ProgramVariable> locals
        {
            get { return (from v in variables where !v.isOutput && !v.isInput select v).ToList(); }
        }

/*        ///////////////////////////////////////////////////////////////////////
        public ProgramVariable makeFreshProgramVariable(DataType type)
        {
            if (parentScope != null)
                return parentScope.makeFreshProgramVariable(type);

            string name = "$t_" + freshProgramVariableIndex.ToString();
            freshProgramVariableIndex++;
            ProgramVariable result = new ProgramVariable(name,type,false,false,false,false);
            addVariable(result);
            return result;
        }
        */
        ///////////////////////////////////////////////////////////////////////
        public ProgramVariable makeFreshProgramVariable(string baseName, IType type)
        {
            int index = 0;
            string name = baseName;
            while (tryFindVariable(name) != null)
                name = baseName + "_$" + (index++).ToString();

            var result = new ProgramVariable(name, type, false, false, false, false);
            addVariable(result);
            return result;
        }

        ///////////////////////////////////////////////////////////////////////
        public void addBoundVariable(BoundVariable v)
        {
            if (parentScope != null)
                parentScope.addBoundVariable(v);
            else
            {
                if (boundVariableMap.ContainsKey(v.name))
                    Debug.Assert(ReferenceEquals(boundVariableMap[v.name], v));
                else
                    boundVariableMap[v.name] = v;
            }
        }

        ///////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////
        public BoundVariable makeFreshBoundVariable(IType type)
        {
            return makeFreshBoundVariable("v", type);
        }

        ///////////////////////////////////////////////////////////////////////
        public BoundVariable tryFindBoundVariable(string name)
        {
            BoundVariable result;
            if (boundVariableMap.TryGetValue(name, out result))
                return result;
            if (parentScope != null)
                return parentScope.tryFindBoundVariable(name);
            return null;
        }

        ///////////////////////////////////////////////////////////////////////
        public BoundVariable makeFreshBoundVariable(string baseName, IType type)
        {
//            if (parentScope != null)
//                return parentScope.makeFreshBoundVariable(baseName,type);
            int index = 0;
            string name = baseName;
            while (tryFindBoundVariable(name) != null || tryFindVariable(name) != null)
                name = baseName + "_$" + (index++).ToString();
            BoundVariable result = new BasicBoundVariable(name, type);
            boundVariableMap[name] = result;
            return result;
        }

        ///////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////
        public TypeVariable makeFreshTypeVariable(string baseName)
        {
            if (parentScope != null)
                return parentScope.makeFreshTypeVariable(baseName);
            int index = 0;
            string name = baseName;
            while (typeVariableMap.ContainsKey(name))
                name = baseName + "_$" + (index++).ToString();
            TypeVariable result = new BasicTypeVariable(name);
            typeVariableMap[name] = result;
            return result;
        }

        ///////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////
        public Procedure findProcedure(string name)
        {
            Procedure p = null;
            procedureMap.TryGetValue(name, out p);
            if (p == null)
                if (parentScope != null)
                    p = parentScope.findProcedure(name);
            return p;
        }

        ///////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////

        public Scope parentScope { get; protected set; }

//        private int freshProgramVariableIndex;
//        private int freshBoundVariableIndex;

        //////////////////////////////////////////////////////////
        //types
        //////////////////////////////////////////////////////////
        public void addTypeConstructor(string name, TypeConstructor typeConstructor)
        {
            if (parentScope != null)
                parentScope.addTypeConstructor(name, typeConstructor);
            else
                typeConstructorMap[name] = typeConstructor;
        }

        ///////////////////////////////////////////////////////////////////////
        public void removeTypeConstructor(string name)
        {
            if (parentScope != null)
                parentScope.removeTypeConstructor(name);
            else
            {
                Debug.Assert(typeConstructorMap.ContainsKey(name));
                typeConstructorMap.Remove(name);
            }
        }

        public void addTypeSynonym(string name, TypeVariable[] typeParameters, IType type)
        {
            if (parentScope != null)
                parentScope.addTypeSynonym(name, typeParameters, type);
            else
                typeMap[name] = new TypeSynonym(name, typeParameters, type);
        }

        ///////////////////////////////////////////////////////////////////////
        public void removeTypeSynonym(string name)
        {
            if (parentScope != null)
                parentScope.removeTypeSynonym(name);
            else
            {
                Debug.Assert(typeMap.ContainsKey(name));
                typeMap.Remove(name);
            }
        }

        //////////////////////////////////////////////////////////
        public ICollection<TypeSynonym> types
        {
            get { return typeMap.Values; }
        }

        public ICollection<TypeConstructor> typeConstructors
        {
            get { return typeConstructorMap.Values; }
        }

        //////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////

        //////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////
        public Constant addConstant(string name, IType type, bool isUnique)
        {
            if (parentScope != null) //constants are global
                return parentScope.addConstant(name, type, isUnique);
            var result = new Constant(name, type, isUnique);
            addVariable(result);
            return result;
        }

        //////////////////////////////////////////////////////////

        //////////////////////////////////////////////////////////
//        private Dictionary<string, Constant> constantMap;
        public TypeFactory typeFactory { get; private set; }
        public ExpressionFactory expressionFactory { get; private set; }

        //////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////
        //Functions

        public ICollection<FunctionTemplate> functionTemplates
        {
            get { return myFunctionTemplates.Values; }
        }

        public void addFunctionTemplate(FunctionTemplate f)
        {
            if (parentScope != null)
                parentScope.addFunctionTemplate(f);
            else
            {
                Debug.Assert(!myFunctionTemplates.ContainsKey(f.name));
                myFunctionTemplates.Add(f.name, f);
            }
        }

        public void removeFunctionTemplate(string name)
        {
            if (name == "<" || name == ">")
                return;
            if (parentScope != null)
                parentScope.removeFunctionTemplate(name);
            else
            {
//                Console.WriteLine("Removing function template \"{0}\"", name);
                Debug.Assert(myFunctionTemplates.ContainsKey(name));
                myFunctionTemplates.Remove(name);
            }
        }

        public FunctionTemplate findFunctionTemplate(string name)
        {
            if (parentScope != null)
                return parentScope.findFunctionTemplate(name);
            else
            {
                FunctionTemplate result;
                myFunctionTemplates.TryGetValue(name, out result);
                return result;
            }
        }

        public Function getFunction(string name, ITypeTuple typeArguments)
        {
            if (parentScope != null)
                return parentScope.getFunction(name, typeArguments);

            Debug.Assert(typeArguments != null);
            Debug.Assert(name != null);
            FunctionTemplate template = null;

            if (!standardFunctionTemplates.TryGetValue(name, out template))
                template = myFunctionTemplates[name];
            Debug.Assert(template != null);

            return template.getInstance(typeArguments);
        }

        #endregion

        public void addStandardFunctionTemplate(string name, FunctionTemplate template)
        {
            foreach (var t in template.typeParameters)
            {
                Debug.Assert(!typeVariableMap.ContainsKey(t.name));
                typeVariableMap[t.name] = t;
            }
            standardFunctionTemplates.Add(name, template);
        }

        public void addVariableAndOld(ProgramVariable variable)
        {
            addVariable(variable);
            addVariable(makeOldVersion(variable));
        }

        ///////////////////////////////////////////////////////////////////////
        private ProgramVariable makeOldVersion(ProgramVariable variable)
        {
            Debug.Assert(tryFindVariable(oldName(variable.name)) == null);
            Debug.Assert(variable.isGlobal);
            return new ProgramVariable(oldName(variable.name), variable.type, false, false, true, true);
        }

        private static bool isOldName(string name)
        {
            return name.StartsWith(oldPrefix);
        }

        ///////////////////////////////////////////////////////////////////////
        private static string oldName(string name)
        {
            if (isOldName(name))
                return name;
            else
                return oldPrefix + name;
        }

        ///////////////////////////////////////////////////////////////////////
        private static string nonOldName(string name)
        {
            if (isOldName(name))
                return name.Substring(oldPrefix.Length);
            else
                return name;
        }

        private static bool isInputVariable(ProgramVariable v)
        {
            return v.isInput;
        }

        ///////////////////////////////////////////////////////////////////////
        private static bool isOutputVariable(ProgramVariable v)
        {
            return v.isOutput;
        }

        ///////////////////////////////////////////////////////////////////////
        private static bool isLocalVariable(ProgramVariable v)
        {
            return !v.isOutput && !v.isInput;
        }

        public TypeVariable makeFreshTypeVariable()
        {
            return makeFreshTypeVariable("T");
        }

        public Function findFunction(string name, ITypeTuple Signature)
        {
            throw new NotImplementedException();
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////////////
    }
}