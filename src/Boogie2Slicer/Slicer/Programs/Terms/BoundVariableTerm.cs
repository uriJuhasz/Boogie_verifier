using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Programs.Terms
{
    public class BoundVariableTerm : VariableTerm
    {
        public BoundVariableTerm(Logic.Variable variable)
        {
            Debug.Assert(variable!=null);
            this.boundVariable = variable;
        }

        //////////////////////////////////////////////
        public void visit(Visitor v)
        {
            v.visit(this);
        }

        //////////////////////////////////////////////
        public virtual VariableTerm cloneVariable()
        {
            return new BoundVariable(boundVariable);
        }

        //////////////////////////////////////////////
        public virtual Terms.Term deepClone()
        {
            return new BoundVariable(boundVariable);
        }

        //////////////////////////////////////////////
        public virtual Terms.Term shallowClone()
        {
            return new BoundVariable(boundVariable);
        }

        //////////////////////////////////////////////
        public string name { get { return boundVariable.name; } }

        //////////////////////////////////////////////
        public override string ToString() { return name; }

        //////////////////////////////////////////////
        public Logic.Variable boundVariable { get; private set; }

        public Terms.VariableTerm deepVariable { get{ return this; } }
    }
}
