using System.Collections.Generic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Utilities;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs
{
    /////////////////////////////////////////////////////////////////

    /////////////////////////////////////////////////////////////////
    public interface Scope
    {
        /////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////
        Scope parentScope { get; }

        ICollection<ProgramVariable> inputs { get; }
        ICollection<ProgramVariable> outputs { get; }
        ICollection<ProgramVariable> locals { get; }
        ICollection<FunctionTemplate> functionTemplates { get; }
        ICollection<TypeSynonym> types { get; }
        ICollection<TypeConstructor> typeConstructors { get; }

        /////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////
        ExpressionFactory expressionFactory { get; }
        TypeFactory typeFactory { get; }

        ///////////////////////////////////////////////////////////////////////
        void addVariable(ProgramVariable variable);
        void removeVariable(string name);

        ProgramVariable findVariable(string name);
        ProgramVariable tryFindVariable(string name);
        Procedure findProcedure(string name);

        Constant addConstant(string name, IType type, bool isUnique);

        TypeVariable makeFreshTypeVariable(string baseName);
        ProgramVariable makeFreshProgramVariable(string baseName, IType type);
        BoundVariable makeFreshBoundVariable(IType type);
        BoundVariable makeFreshBoundVariable(string baseName, IType type);

        /////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////
        //Functions
        void addFunctionTemplate(FunctionTemplate f);
        FunctionTemplate findFunctionTemplate(string name);
        void removeFunctionTemplate(string name);

        Function getFunction(string name, ITypeTuple typeArguments);

        /////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////
        //Types
        void addTypeConstructor(string name, TypeConstructor typeConstructor);
        void removeTypeConstructor(string name);
        void addTypeSynonym(string name, TypeVariable[] typeParameters, IType type);
        void removeTypeSynonym(string name);

        /////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////
        ProgramVariable findOldVersion(string name);
        bool isOld(string name);

        /////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////

        void addBoundVariable(BoundVariable variable);
        BoundVariable tryFindBoundVariable(string name);


        string getVarUName(Microsoft.Boogie.Variable v);

    }
}