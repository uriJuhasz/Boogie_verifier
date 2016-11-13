using Microsoft.Boogie;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Utilities;
using Slicer.StateSpace.Variables;
using BoundVariable = Slicer.StateSpace.Variables.Quantification.BoundVariable;
using Constant = Microsoft.Boogie.Constant;
using Function = Microsoft.Boogie.Function;
using TypeVariable = Slicer.StateSpace.Types.Quantification.TypeVariable;
using Variable = Microsoft.Boogie.Variable;
using System.Linq;

namespace Slicer.Programs
{
    internal class ProgramFactory
    {
        ///////////////////////////////////////////////////////
        private Program program;
        public Microsoft.Boogie.Program boogieProgram { get; private set; }

        ///////////////////////////////////////////////////////
        public Program makeProgram(Microsoft.Boogie.Program boogieProgram)
        {
            program = new Program(boogieProgram);
            this.boogieProgram = boogieProgram;

            addTypes();
            addConstants();
            addFunctions();
            addFunctionBodies();
            addVariables();

            Program result = program;
            program = null;
            return result;
        }

        private void addFunctionBodies()
        {
            var ef = new ExpressionFactory(program);
            foreach (var d in boogieProgram.TopLevelDeclarations)
            {
                var t = d as Function;
                if (t == null)
                    continue;
                if (t.Body == null)
                    continue;

                FunctionTemplate template = program.findFunctionTemplate(t.Name);
                var arguments = new BoundVariable[template.signature.argumentTypes.Count()];
                for (int i = 0; i < arguments.Length; i++)
                    arguments[i] = program.makeFreshBoundVariable(t.InParams[i].Name,
                                                                  template.signature.argumentTypes[i]);
//                Debug.Assert(template.body != null);

                var context = new TypeFactory.Context();
                context.push();
                foreach (var tp in template.typeParameters)
                    context.add(tp);
                for (int i = 0; i < arguments.Length; i++)
                    context.add(t.InParams[i].Name, arguments[i]);

                Expression expression = ef.makeExpression(t.Body, context, false);
                template.body = new FunctionBody(arguments, expression);
            }
        }

        ///////////////////////////////////////////////////////
        private void addFunctions()
        {
            foreach (var d in boogieProgram.TopLevelDeclarations)
            {
                var t = d as Function;
                if (t == null) continue;

                var context = new TypeFactory.Context();
                TypeFactory.pushTypeVariables(ref context, t.TypeParameters);
                TypeVariable[] typeParameters = TypeFactory.makeTypeVariables(context, t.TypeParameters);

                IType resultType = program.typeFactory.makeTypeI(t.OutParams[0].TypedIdent.Type, context);
                var argumentTypes = new IType[t.InParams.Count];
                for (int i = 0; i < t.InParams.Count; i++)
                    argumentTypes[i] = program.typeFactory.makeTypeI(t.InParams[i].TypedIdent.Type, context);

                var signature = new BasicFunctionSignature(resultType, argumentTypes);

                string attributes = ExpressionFactory.getAttributes(t.Attributes);

                program.addFunctionTemplate(
                    new BFunctionTemplate(
                        t.Name,
                        attributes,
                        typeParameters,
                        signature,
                        null
                        )
                    );
            }
        }

        ///////////////////////////////////////////////////////
        private void addTypes()
        {
            foreach (var d in boogieProgram.TopLevelDeclarations)
            {
                var t = d as TypeCtorDecl;
                var s = d as TypeSynonymDecl;
                if (t == null && s == null)
                    continue;

                if (t != null)
                {
                    program.addTypeConstructor(t.Name, new TypeConstructor(t.Name, t.Arity));
                    continue;
                }
                if (s != null)
                {
                    var context = new TypeFactory.Context();
                    TypeFactory.pushTypeVariables(ref context, s.TypeParameters);

                    program.addTypeSynonym(s.Name, TypeFactory.makeTypeVariables(context, s.TypeParameters),
                                           makeTypeI(context, s.Body));
//                    procedure.addTypeAlias(si.Name, makeType(si.Body));
                }
            }
        }

        ///////////////////////////////////////////////////////
        private void addConstants()
        {
            foreach (var d in boogieProgram.TopLevelDeclarations)
            {
                var c = d as Constant;
                if (c == null)
                    continue;
                program.addUsedVar(c);
                program.addConstant(program.getVarUName(c), makeType(c.TypedIdent.Type), c.Unique);
                //TODO: order, parentscomplete
            }
        }

        ///////////////////////////////////////////////////////
        private void addVariables()
        {
            foreach (Variable v in boogieProgram.GlobalVariables)
                program.addUsedVar(v);

            foreach (Variable v in boogieProgram.GlobalVariables)
                program.addVariableAndOld(new ProgramVariable(program.getVarUName(v), makeType(v.TypedIdent.Type), false, false, true,
                                                              false));
        }

        private IType makeTypeI(TypeFactory.Context context, Type type)
        {
            return program.typeFactory.makeTypeI(type, context);
        }

        private IType makeType(Type type)
        {
//            var tf = new TypeFactory(procedure);
            return program.typeFactory.makeTypeI(type, new TypeFactory.Context());
        }
    }
}