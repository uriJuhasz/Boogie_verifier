using System;
namespace Slicer.StateSpace.Types.Quantification
{
    public interface TypeVariable : IComparable<TypeVariable>
    {
        string name { get; set; }
        string ToString();
        string ToStringN();
    }
}