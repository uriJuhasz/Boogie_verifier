using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    class CaptainsLog
    {

    }

    public class LogEntry
    {
        public readonly ISet<GroundTermEC>          mergedGroundTerms          = new HashSet<GroundTermEC>();
        public readonly ISet<GroundTermTupleEC>     mergedGroundTuples         = new HashSet<GroundTermTupleEC>();
        public readonly ISet<GroundAtomicFormulaEC> mergedGroundAtomicFormulae = new HashSet<GroundAtomicFormulaEC>();
        public readonly ISet<GroundClauseEC>        mergedGroundClauses        = new HashSet<GroundClauseEC>();

        public readonly ISet<FunctionApplicationEC> mergedFunctionApplications = new HashSet<FunctionApplicationEC>();
        public readonly ISet<TermTupleEC>           mergedTuples = new HashSet<TermTupleEC>();
        public readonly ISet<AtomicFormulaEC>       mergedAtomicFormulae = new HashSet<AtomicFormulaEC>();
        public readonly ISet<ClauseEC>              mergedClauses = new HashSet<ClauseEC>();

        public readonly ISet<IAtomEC>   assumedAtoms   = new HashSet<IAtomEC  >();
        public readonly ISet<IClauseEC> assumedClauses = new HashSet<IClauseEC>();
    }
}
