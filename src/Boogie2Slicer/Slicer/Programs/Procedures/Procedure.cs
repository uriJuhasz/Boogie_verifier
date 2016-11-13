using System.Collections.Generic;
using System.IO;
using Slicer.Programs.CFG;
using Slicer.StateSpace.Types.Quantification;

namespace Slicer.Programs.Procedures
{
    public interface Procedure : Scope
    {
        ///////////////////////////////////////////////////////////////
        ICollection<TypeVariable> typeParameters { get; }

        ///////////////////////////////////////////////////////////////
//        string getVarUName(Microsoft.Boogie.Variable v);
        CFG<BasicBlock, BasicEdge> cfg { get; }
        ICollection<BasicBlock> blocks { get; }

        ///////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////
        string name { get; }
        int numStatements { get; }
        string fileName { get; }

        bool hasLabel(string s);
        void print(TextWriter t);
        void dump(string fileName);

        TypeVariable makeFreshTypeVariable();

        ///////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////
    }
}