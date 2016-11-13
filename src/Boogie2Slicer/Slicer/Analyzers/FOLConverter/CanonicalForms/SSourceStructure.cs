using System.Diagnostics;
using System.Linq;
using System.Collections.Generic;
using TI = System.Int32;
using GTI = System.Int32;
using GTTI = System.Int32;
using GTTKey = System.String;
using System;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public interface STDBase<T> : ITSDBase<T>
        where T : ECLogicElement
    {
        IEnumerable<T> pts { get; }
        void mapPT(T pt);
        void removePT(T pt);
    }
    public class SGTSD : AGTSD, STDBase<GT>
    {
        public SGTSD(int gti)
            : base(gti)
        {
        }
        public IEnumerable<GT> pts { get { return pgts; } }
        public ISet<GT> pgts { get { return pPGTs; } }
        public IEnumerable<GT> npgts { get { return pNPGTs; } }
        private readonly ISet<GT> pNPGTs = new HashSet<GT>();
        private readonly ISet<GT> pPGTs = new HashSet<GT>();
        public override IType type
        {
            get
            {
                var t = base.type;
                if (t != null)
                    return t;
                if (pts.Any())
                    return pts.First().type;
                return null;
            }
        }
        public void mapPT(GT pgt)
        {
            Debug.Assert(!pPGTs.Contains(pgt));
            pPGTs.Add(pgt);
            pNPGTs.Add(pgt);
        }
        public void removePT(GT pgt)
        {
            Debug.Assert(pPGTs.Contains(pgt));
            pPGTs.Remove(pgt);
            pNPGTs.Remove(pgt);
        }
        public bool hasPGT(GT pgt) { return pPGTs.Contains(pgt); }
        public override bool hasNewSources { get { return pNPGTs.Count>0; } }
        internal void clearNPGTs() { pNPGTs.Clear(); }

        public override bool isAnyUpdated{get{return base.isAnyUpdated || hasNewSources;}}
    }
    public class SGTTSD : AGTTSD, STDBase<GTT>
    {
        public SGTTSD(int gtti, int[] gtis)
            : base(gtti, gtis)
        {
        }
        public IEnumerable<GTT> pts { get { return pgtts; } }
        public ISet<GTT> pgtts { get { return pPGTTs; } }
        internal IEnumerable<GTT> npgtts { get { return pNPGTTs; } }
        private readonly ISet<GTT> pPGTTs = new HashSet<GTT>();
        private readonly ISet<GTT> pNPGTTs = new HashSet<GTT>();
        public override void clearNewsFlags() { base.clearNewsFlags(); pNPGTTs.Clear(); }
        public void mapPT(GTT pgtt)
        {
            Debug.Assert(!pPGTTs.Contains(pgtt));
            pPGTTs.Add(pgtt);
            pNPGTTs.Add(pgtt);
        }
        public override bool hasNewSources { get { return pNPGTTs.Count > 0; } }
        public override bool isAnyUpdated { get { return base.isAnyUpdated || hasNewSources; } }
        public void removePT(GTT pgtt)
        {
            Debug.Assert(pPGTTs.Contains(pgtt));
            pPGTTs.Remove(pgtt);
            pNPGTTs.Remove(pgtt);
        }
        public bool hasPGTT(GTT pgtt) { return pPGTTs.Contains(pgtt); }
    }
    public class STSourceStructure<T, TSD> : TSourceStructure<T, TSD>
        where T : ECLogicElement
        where TSD : TSDBase<T>,STDBase<T>
    {
        //Source structure for GT or GTT
        //T in {GT,GTT}
        private readonly SU su;
        private Universe pu { get { return su.predecessor; } }

        public STSourceStructure(SU su)
        {
            this.su = su;
        }

        public override IUNG gUniverse { get { return su; } }
        #region consistency
        public override bool sourcesCompleteTINoLTs(TI ti)
        {
            Debug.Assert(base.sourcesCompleteTINoLTs(ti));
            var td = getTD(ti);
            foreach (var pt in td.pts)
                Debug.Assert(ptToTIMap[pt] == td.ti);
            return true;
        }
        public bool sourcesComplete(TI ti)
        {
            return sourcesComplete(ti, getTD(ti));
        }
        public bool sourcesComplete(TI ti, TSD td)
        {
            //TODO
            return true;
        }
        #endregion consistency

        #region PTs
        public IEnumerable<T> allPTs { get { return ptToTIMap.Keys; } }
        private readonly IDictionary<T, TI> ptToTIMap = new Dictionary<T, TI>();
        public bool hasPT(T pt) { return ptToTIMap.ContainsKey(pt); }
        public bool tryGetPTTI(T pt, out TI ti)
        {
            return ptToTIMap.TryGetValue(pt, out ti);
        }
        public bool tryGetPTTD(T pt, out TSD td)
        {
            TI ti;
            if (tryGetPTTI(pt, out ti))
            {
                td = getTD(ti);
                return true;
            } else
            {
                td = null;
                return false;
            }
        }
        public TI getPTTI(T pt)
        {
            return ptToTIMap[pt];
        }
        public TSD getPTTD(T pt)
        {
            return getTD(ptToTIMap[pt]);
        }
        public void mapPTInt(TI ti, T pt)
        {
            #region debug
#if DEBUG
            if ((pt is GT) && Universe.gtBreakCond(su, pt as GT))
                Debugger.Break();
            if (pt is GT && Universe.gtBreakCond(pu, pt as GT))
                Debugger.Break();
            if ((pt is GTT) && Universe.gttBreakCond(su, pt as GTT))
                Debugger.Break();
            if (pt is GTT && Universe.gttBreakCond(pu, pt as GTT))
                Debugger.Break();
#endif
            #endregion debug
            ptToTIMap[pt] = ti;
            var td = getTD(ti);
            td.mapPT(pt);
        }
        public void removePT(T pt)
        {
            #region debug
#if DEBUG
            Debug.Assert(ptToTIMap.ContainsKey(pt));
            if ((pt is GT) && Universe.gtBreakCond(su, pt as GT))
                Debugger.Break();
            if (pt is GT && Universe.gtBreakCond(pu, pt as GT))
                Debugger.Break();
            if (pt is GTT && Universe.gttBreakCond(su, pt as GTT))
                Debugger.Break();
            if (pt is GTT && Universe.gttBreakCond(pu, pt as GTT))
                Debugger.Break();
#endif
            #endregion debug
            var ti = getPTTI(pt);
            var td = getTD(ti);
            td.removePT(pt);
            ptToTIMap.Remove(pt);
        }
        public override void removeTDInt(TSD td)
        {
            foreach (var pt in td.pts)
                if (ptToTIMap[pt] == td.ti)
                    ptToTIMap.Remove(pt);
            base.removeTDInt(td);
        }
        #endregion PTs
        public override void add(TSD td)
        {
            base.add(td);
            var ti = td.ti;
            Debug.Assert(td.pts.All(pt => !hasPT(pt)));
            foreach (var pt in td.pts)
                ptToTIMap[pt] = ti;
        }
    }
    public sealed class SSourceStructure : USourceStructure<SGTSD, SGTTSD, STSourceStructure<GT, SGTSD>, STSourceStructure<GTT, SGTTSD>>
    {
        #region instance creation
        public SSourceStructure(SU su)
            : base(new STSourceStructure<GT, SGTSD>(su), new STSourceStructure<GTT, SGTTSD>(su))
        {
            this.su = su;
        }
        #endregion instance creation

        #region mapping
        protected override sealed SGTSD makeNewGTD(GTI gti)
        {
            return new SGTSD(gti);
        }
        protected override sealed SGTTSD makeNewGTTD(GTTI gtti, GTI[] gttGTIs)
        {
            var key = makeGTTKey(gttGTIs);
            Debug.Assert(!hasGTTKey(key));
            return new SGTTSD(gtti, gttGTIs);
        }

        internal void mapPGTT(GTTI gtti, GTT pgtt)
        {
            Debug.Assert(su.predecessor.upToDate(pgtt));
            GTTI ogtti;
            if (gtts.tryGetPTTI(pgtt, out ogtti))
                Debug.Assert(gtti == ogtti);
            else
                gtts.mapPTInt(gtti, pgtt);
        }
        #endregion mapping

        #region members
        public override IUNG gu { get { return su; } }
        private readonly SU su;
        #endregion members

        #region garbage
//        public Universe pu { get { return su.predecessor; } }
        /*internal override void markPredecessors()
        {
            foreach (var pgt in gts.allPTs)
                pu.addSuccessorUsedGT(pgt);
            foreach (var gttd in gtts.allTDs)
                pu.addSuccessorUsedGTTs(pu.filterAndTM(from gti in gttd.gtiT select gts.getTD(gti).pts), 
                    gttd.allSGFAs.Union(gttd.isActual ? su.getRGFAs(gttd.lt()) : new Function[0]));
            foreach (var rgtt in su.allRGTTs)
                pu.addSuccessorUsedGTTs(pu.filterAndTM(from gt in rgtt.gtT select gts.getLTTD(gt).pgts), new Function[0]);

            foreach (var pp in su.instantiationIndex.allPPs)
                if (pu.inScope(pp))
                {
                    var pgtts = new HashSet<GTT>(from lgtt in su.instantiationIndex.getPPGTTs(pp) from pgtt in gtts.getLTTD(lgtt).pgtts select pgtt);
                    if (pgtts.Count > 0)
                        pu.addSuccessorUsedGLRTCache(pp, pgtts);
                }
        }*/
        internal override IEnumerable<GT> getAllPGTs(int i) { Debug.Assert(i == 0);  return gts.allPTs; }
        internal override IEnumerable<GT> getGTIPGTs(int i, GTI gti) { Debug.Assert(i == 0); return gts.getTD(gti).pts; }
        internal override IEnumerable<GTT> getAllPGTTs(int i) { Debug.Assert(i == 0); return gtts.allPTs; }
        internal override IEnumerable<GTT> getGTTIPGTTs(int i, GTTI gtti) { Debug.Assert(i == 0); return gtts.getTD(gtti).pts; }

        internal override void cutCrap()
        {
            var pu = su.predecessor;
            foreach (var gtd in gts.allTDs)
            {
                foreach (var pgt in gtd.pgts.ToList())
                    if (!pu.gtData.ContainsKey(pgt))
                    {
                        Debug.Assert(pgt.gfas.All(pgfa => !pu.gttData.ContainsKey(pgfa.gtt) || pu.gttData[pgfa.gtt].rgfas.Contains(pgfa.function)));
                        gts.removePT(pgt);
                    }
            }
            foreach (var gttd in gtts.allTDs)
            {
                foreach (var pgtt in gttd.pgtts.ToList())
                    if (!pu.hasGTT(pgtt))
                    {
                        Debug.Assert(pgtt.gtT.Any(pgt => !pu.gtData.ContainsKey(pgt)) || pu.hasRGTT(pgtt));
                        gtts.removePT(pgtt);
                    }
            }
        }
        protected override sealed void propagateUsed(SGTSD gtd, ISet<SGTSD> todoGTDs, ISet<SGTSD> usedGTDs, ISet<SGTTSD> todoGTTDs, ISet<SGTTSD> usedGTTDs)
        {
            if (gtd.depth!=topDepth && gtd.depth>minDepth)
                foreach (var pgt in gtd.pgts)
                    foreach (var pgfa in pgt.gfas)
                        if (su.inScope(pgfa.function))
                        {
                            var gttd = gtts.getPTTD(pgfa.gtt);
                            if (usedGTTDs.Add(gttd))
                                todoGTTDs.Add(gttd);
                        }
            base.propagateUsed(gtd, todoGTDs, usedGTDs, todoGTTDs, usedGTTDs);
        }
        #endregion garbage

        #region consistency
        private Universe pu { get { return su.predecessor; } }
        public override bool sourcesCompleteGTINoLGTs(int gti)
        {
            var gtd = gts.getTD(gti);

            #region gfas
            foreach (var gfa in gtd.gfas)
                if (pu.inScope(gfa.Item1))
                {
                    var f = gfa.Item1;
                    var gtti = gfa.Item2;
                    var gttd = gtts.getTD(gtti);
                    foreach (var pgtt in gttd.pgtts)
                        if (pu.inDepthBoundStrict(pgtt))
                        {
                            GFA pgfa;
                            if (pu.tryGetGFA(f, pgtt, out pgfa))
                                Debug.Assert(gtd.hasPGT(pgfa.gt) || pu.gtRevision(pgfa.gt) >= su.predecessorLastRevision);
                            else
                                Debug.Assert(pu.hasRGFA(f, pgtt));
                        }
                }
            #endregion gfas

            #region pgts
            foreach (var pgt in gtd.pgts)
                Debug.Assert(pu.upToDate(pgt));
            if (gtd.depth > minDepth)
                foreach (var pgt in gtd.pgts)
                {
                    Debug.Assert(pu.upToDate(pgt));
                    foreach (var pgfa in pgt.gfas)
                        if (su.inScope(pgfa.function) && pu.gttRevision(pgfa.gtt)<su.predecessorLastRevision)
                            Debug.Assert(gtd.hasGFA(pgfa.function, gtts.getPTTI(pgfa.gtt)));
                }
            #endregion pgts

            #region rgtts
            foreach (var lgt in gtd.lgts)
                foreach (var rgtt in su.getGTRGTTs(lgt))
                {
                    var pgtsT = (from gt in rgtt.gtT select pu.depthFilterStrict(gts.getLTTD(gt).pgts)).ToArray();
                    var pgtTs = FU.makeOptions(pgtsT);
                    var pgtts = (from pgtT in pgtTs select pu.getGTT(pgtT));
                    foreach (var pgtt in pgtts)
                        Debug.Assert(pu.hasGTT(pgtt) || pu.hasRGTT(pgtt));
                }
            #endregion rgtts

            return true;
        }
        public override bool sourcesCompleteGTTINoLGTTs(int gtti)
        {
            var gttd = gtts.getTD(gtti);
            #region gtis
            if (gttd.gtiT.Length > 0)
            {
                foreach (var pgtA in FU.makeOptions((from gti in gttd.gtiT select pu.depthFilterStrict(gts.getTD(gti).pgts)).ToArray()))
                {
                    GTT pgtt;
                    if (su.termRepository.tryGetGTT(pgtA, out pgtt))
                        if (pu.hasGTT(pgtt))
                        {
                            Debug.Assert(pu.upToDate(pgtt));
                            Debug.Assert(gttd.hasPGTT(pgtt) || pu.gttRevision(pgtt) >= su.predecessorLastRevision);
                        }
                        else
                            Debug.Assert(pu.hasRGTT(pgtt));
                }
            }
            #endregion gtis
            #region pgtts
            foreach (var pgtt in gttd.pgtts)
                Debug.Assert(pu.upToDate(pgtt));
            #endregion pgtts

            return true;
        }
        public override bool sourcesComplete()
        {
            base.sourcesComplete();
            foreach (var gtd in gts.allTDs)
                if (gtd.isActual)
                    foreach (var pgt in gtd.pgts)
                        Debug.Assert(su.transitiveMerge(pgt) == gtd.lt());
            foreach (var gttd in gtts.allTDs)
                if (gttd.isActual)
                    foreach (var pgtt in gttd.pgtts)
                        Debug.Assert(su.transitiveMerge(pgtt) == gttd.lt());
            return true;
        }

        #endregion consistency
    }
}
