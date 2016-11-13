using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Programs.Terms
{
    public class ProgramVariableTerm : VariableTerm
    {
        //////////////////////////////////////////////
        public ProgramVariableTerm(StateSpace.Variable programVariable)
        {
            Debug.Assert(programVariable!=null);
            this.programVariable = programVariable;
        }

        //////////////////////////////////////////////
        public void visit(Visitor v)
        {
            v.visit(this);
        }

        //////////////////////////////////////////////
        public virtual VariableTerm cloneVariable()
        {
            return new ProgramVariableTerm(programVariable);
        }

        //////////////////////////////////////////////
        public virtual Terms.Term deepClone()
        {
            return new ProgramVariableTerm(programVariable);
        }

        //////////////////////////////////////////////
        public virtual Terms.Term shallowClone()
        {
            return new ProgramVariableTerm(programVariable);
        }

        //////////////////////////////////////////////
        public string name { get { return programVariable.name; } }

        //////////////////////////////////////////////
        public override string ToString() { return programVariable.name; }

        //////////////////////////////////////////////
        public Slicer.StateSpace.Variable programVariable { get; set; }

        //////////////////////////////////////////////
        public Terms.VariableTerm deepVariable
        {
            get
            {
                return this;
            }
        }
    }
}
