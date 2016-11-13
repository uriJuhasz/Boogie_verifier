using Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS;
using Slicer.Analyzers.FOLConverter.Formulae;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using GTI = System.Int32;
using GTTI = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public interface ITermStructureTemplate
    {
#if DEBUG
        int index { get; }
#endif
//        void check();
        bool invariant();
        bool isGTIUnassigned(GTI gti);
        bool isGTTIUnassigned(GTTI gtti);
        IEnumerable<GTI> unassignedGTIs { get; }
        IEnumerable<GTTI> unassignedGTTIs { get; }
        IEnumerable<Tuple<Function, GTTI>> getGTITemplate(GTI gti);
        IList<GTTI> getGTTITemplate(GTTI gtti);
        GT getLGT(GTI gti);
        GTT getLGTT(GTTI gtti);

        IEnumerable<GTTI> mapGT(GTI gti, GT gt);
        void mapGTT(GTTI gtti, GTT gtt);
        void mapGTandSGTTs(GTI gti, GT gt, TermRepository repo);
        int ui { get; }
    }
}
