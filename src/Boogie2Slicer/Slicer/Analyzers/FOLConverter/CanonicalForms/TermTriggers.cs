using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    ////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////
    public abstract class TermTrigger
    {
        public readonly FL literal;
        public readonly int index;
        public readonly IT term;

        protected TermTrigger(FL atom, int index)
        {
            Debug.Assert(index >= 0 && index < atom.faf.ftt.Count());
            this.literal = atom;
            this.index = index;
            term = atom.faf.ftt[index];
            stringNCache = makeKey(atom, index);
            hashCache = stringNCache.GetHashCode();
        }
        public override int GetHashCode()
        {
            return hashCache;
        }
        internal static string makeKey(FL atom, int i)
        {
            return atom.ToStringN() + "|" + i + "|";
        }

        private readonly string stringNCache;
        private readonly int hashCache;
    }
    
    public class VariableTermTrigger : TermTrigger
    {
        public readonly LVar variable;

        public VariableTermTrigger(FL atom, int index)
            : base(atom, index)
        {
            Debug.Assert(atom.faf.ftt[index] is FVT);
            variable = (atom.faf.ftt[index] as FVT).variable;
        }
        public override string ToString()
        {
            return literal.ToStringB() + "[" + index + "] - " + variable.name;
        }

    }

    public class LFSFLTrigger : TermTrigger
    {
        public LFSFLTrigger(FL fl, int index)
            : base(fl, index)
        {
            Debug.Assert(index >= 0 && index < fl.faf.ftt.Count());
            Debug.Assert(term is FFA);
            functionApplication = term as FFA;
        }

        public readonly FFA functionApplication;
        public override string ToString()
        {
            return functionApplication.ToStringB() + " : " + literal.ToStringB() + "[" + index + "] - ";
        }
    }
}