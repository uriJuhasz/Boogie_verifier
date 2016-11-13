using Slicer.StateSpace.Variables;

namespace Slicer.Programs.Expressions
{
    public interface ProgramVariableExpression : FreeAtomicExpression
    {
        ProgramVariable programVariable { get; }
    }
}