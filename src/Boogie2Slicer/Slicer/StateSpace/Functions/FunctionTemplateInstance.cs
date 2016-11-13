namespace Slicer.StateSpace.Functions
{
    internal interface FunctionTemplateInstance : Function
    {
        FunctionTemplate template { get; }
    }
}