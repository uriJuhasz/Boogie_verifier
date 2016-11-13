using Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS;
using Slicer.Analyzers.FOLConverter.Formulae;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using TI = System.Int32;
using GTI = System.Int32;
using GTTI = System.Int32;
using GTTKey = System.String;
using Depth = System.Int32;
using System;
using Slicer.StateSpace.Types;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    #region non generic
    //T in {GT,GTT}
    public abstract class USourceStructureNG
    {
        #region instance creation
#if DEBUG
        public static int globalIndex = 0;
        protected readonly int index;
#endif
        protected USourceStructureNG()
        {
#if DEBUG
            index = globalIndex;
            globalIndex++;
#endif
        }

        public override string ToString()
        {
            return "USS(" + gu.ToString() + "):"
#if DEBUG
                + index.ToString()
#endif
            ;
        }
        #endregion instance creation

        #region index generation
        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private int lastGTTI = 1;

        protected int getNewGTTI()
        {
            var result = lastGTTI;
            lastGTTI += 2;
            return result;
        }
        public static string makeGTTKey(IEnumerable<int> gtis)
        {
            var tupleKey = "[" + Operator.commaSeparatedList(from sgti in gtis select sgti.ToString()) + "]";
            return tupleKey;
        }
        #endregion index generation

        #region utilities
        public abstract ISet<GT> getGTIMGTs(GTI gti);
        public abstract ISet<GTT> getGTTIMGTTs(GTTI gtti);
        public abstract IEnumerable<Function> getGTTISGFAs(GTTI gtti);
        public abstract GTI getGTTISGFA(Function f, GTTI gtti);
        public abstract IEnumerable<GTTI> getGTIActualSGTTIs(GTI gti);
        public abstract IEnumerable<Tuple<Function, GTTI>> getGTIActualGFAs(GTI gti);
        public abstract IList<GTI> getGTTIGTIs(GTTI gtti);
        public abstract IUNG gu { get; }
        protected GTT emptyGTT { get { return gu.emptyGTT; } }
        protected TermRepository tr { get { return gu.termRepository; } }
        public abstract bool tryGetLGTGTI(GT lgt, out GTI gti);
        public abstract GTTI getLGTTGTTI(GTT lgtt);
        #endregion utilities

        #region consistency
        public abstract bool sourcesCompleteNoLGTs();
        public abstract bool sourcesComplete();
//        public abstract bool sourcesCompleteGTI(GTI gti);
//        public abstract bool sourcesCompleteGTTI(GTTI gtti);
        public abstract bool sourcesCompleteGTINoLGTs(GTI gti);
        public abstract bool sourcesCompleteGTTINoLGTTs(GTTI gtti);
        #endregion consistency

        #region accessors
        public abstract Depth getGTIDepth(GTI gti);
        public abstract GT getGTILGT(GTI gti);
        public abstract GTT getGTTILGTT(GTTI gtti);
//        public abstract bool tryGetLGTGTD(GT lgt, out AGTD gtd);
        #endregion accessors

        public static Depth minDepth { get { return Universe.minGTDepth; } }
        public static Depth maxDepth { get { return Universe.maxGTDepth; } }
        public static Depth topDepth { get { return Universe.topGTDepth; } }
        public static Depth originalDepth { get { return Universe.originalGTDepth; } }

    }
    #endregion non generic

    public interface ITSDBase<T>
         where T : ECLogicElement
    {
        ISet<T> lts { get; }
        T lt();
        int ti { get; }

        bool isActual { get; }
        bool isOriginal { get; }
        bool isFeasible { get;}
        bool isActualTDUpdated { get; }
        bool isGoal { get; }
        void setActual();
        void setOriginal();
        int depth { get; }
        void setLT(T lt);
        void addLTInt(T lt);
//        void removeLTInt(T lt);
    }
    public abstract class TSDBase<T> : ITSDBase<T>
         where T : ECLogicElement
    {
        #region instance creation
        protected TSDBase(int ti)
        {
            this.tiP = ti;
            pDepth = topDepth;
        }
        #endregion instance creation

        #region members
        private readonly int tiP;
        private readonly ISet<T> pLTs = new HashSet<T>();
        private readonly ISet<T> pNLTs = new HashSet<T>();
        public ISet<T> lts { get { return pLTs; } }
        public ISet<T> nlts { get { return pNLTs; } }

        public int ti { get { return tiP; } }

        private int pDepth;
        public int depth { get { return pDepth; } }
        private Depth topDepth { get { return Universe.topGTDepth; } }
        private Depth maxDepth { get { return Universe.maxGTDepth; } }
        private Depth minDepth { get { return Universe.minGTDepth; } }
        public virtual void setDepth(int newDepth)
        {
//            Debug.Assert(newDepth != 0);
            Debug.Assert(newDepth >= minDepth);
            Debug.Assert(newDepth <= maxDepth);
            var oldDepth = depth;
            if (
                (depth == topDepth) ||
                (depth > 0 && newDepth >= 0 && newDepth < depth) ||
                (depth < 0 && newDepth > depth))
            {
                setDepthInt(newDepth);
                flags |= depthUpdatedMask;
                if ((oldDepth == topDepth || oldDepth == minDepth) && newDepth>minDepth)
                    flags |= depthDownUpdatedMask; //can newly propagate down
                if (depth >= 0 && depth <= maxDepth && (oldDepth<0 || oldDepth==topDepth))
                {//newly feasible
                    if (isActual) return;
                    if (isGoal)
                        setActual();
                    else
                        flags |= feasibleUpdateMask;
                }
            }
        }
        internal void setDepthInt(int newDepth)
        {
            Debug.Assert(newDepth >= minDepth);
            Debug.Assert(newDepth <= maxDepth);
            var oldDepth = depth;
            Debug.Assert(
                (depth == topDepth) ||
                (depth > 0 && newDepth >= 0 && newDepth < depth) ||
                (depth < 0 && newDepth > depth));
            pDepth = newDepth;
        }
        public T lt() {Debug.Assert(lts.Count == 1); return lts.First(); }
        #endregion members

        #region flags
        private int flags = 0;
        private const int originalMask         = 1 << 0;
        private const int actualMask           = 1 << 1;
        private const int goalMask             = 1 << 3;
        private const int actualTDUpdatedMask  = 1 << 4;
        private const int depthUpdatedMask     = 1 << 5;
        private const int depthDownUpdatedMask = 1 << 6;
        private const int depthUpUpdatedMask   = 1 << 7;
        private const int feasibleUpdateMask   = 1 << 8;
        private const int actualUpdateMask     = 1 << 9;
        private const int actualGFAMask        = 1 << 10;

        private const int anyUpdatedMask = depthUpdatedMask | depthDownUpdatedMask /*| depthUpUpdatedMask*/ | feasibleUpdateMask | actualUpdateMask /*| gfaUpdateMask*/;
        public bool isOriginal { get { return (flags & originalMask) == originalMask; } }
        public bool isActual { get { return (flags & actualMask) == actualMask; } }
        public bool isFeasible { get { return depth>=0 && depth<=maxDepth; } }
        public bool isGoal { get { return (flags & goalMask) == goalMask; } }
        public bool isActualTDUpdated { get { return (flags & actualTDUpdatedMask) == actualTDUpdatedMask; } }
        public bool isDepthUpdated { get { return (flags & depthUpdatedMask) == depthUpdatedMask; } }
        public bool isDepthDownUpdated { get { return (flags & depthDownUpdatedMask) == depthDownUpdatedMask; } }
        public bool isActualUpdated { get { return (flags & actualUpdateMask) == actualUpdateMask; } }
        public bool isFeasibleUpdated { get { return (flags & feasibleUpdateMask) == feasibleUpdateMask; } }
        public virtual bool hasNewSources { get { return false; } }
        internal void clearActualUpdated() { flags &= ~actualUpdateMask; }
        internal void clearDepthUpdated() { flags &= ~depthUpdatedMask; }
        internal void clearDepthDownUpdated() { flags &= ~depthDownUpdatedMask; }
        internal void clearFeasibleUpdated() { flags &= ~feasibleUpdateMask; }
        internal void clearActualTDUpdated() { flags &= ~actualTDUpdatedMask; }
        internal void clearGoal() { flags &= ~goalMask; }

        internal void clearActual() { flags &= ~actualMask; }
        internal void removeLT(T lt) { Debug.Assert(pLTs.Contains(lt));pLTs.Remove(lt); }
        public void setGoal()
        {
            if (isActual)
                return;
            if (isFeasible)
                setActual();
            else
                flags |= goalMask;
        }

        public void setActual()
        {
            if (isActual) return;
            setActualInt();
//            if (hasActualGFAs)
//                setActualGFAsUpdated();
        }
        private void setActualInt() {
            if (isActual) return;
            Debug.Assert(isFeasible);
            Debug.Assert(depth >= 0);
            Debug.Assert(depth <= maxDepth);
            flags &= ~feasibleUpdateMask;
            flags |= actualMask | actualUpdateMask;
        }
        public void setOriginal() {
            flags |= originalMask;
            setDepth(Universe.originalGTDepth);
            setActual();
        }
        internal void setActualTDUpdated()
        {
            flags |= actualTDUpdatedMask;
        }
        #endregion flags

        #region new elements
        public virtual void addLTInt(T lt)
        {
            Debug.Assert(!pLTs.Contains(lt));
            pLTs.Add(lt);
            pNLTs.Add(lt);
        }
        public virtual bool isAnyUpdated { get { return (flags & anyUpdatedMask) != 0 || nlts.Any(); } }
        public virtual void clearNewsFlags() { flags &= ~anyUpdatedMask; }
        public void clearNLTs() { pNLTs.Clear(); }
        #endregion new elements

        #region merge
        internal bool hasActualGFAs { get { return (flags & actualGFAMask) == actualGFAMask; } }
        internal void addActualGFA()
        {
            if (hasActualGFAs)
                setActualTDUpdated();
            else
                addActualGFAInt();
        }
        internal void addActualGFAInt() {
            flags |= actualGFAMask;
        }
        internal void clearActualGFAInt()
        {
            flags &= ~actualGFAMask;
        }
        internal virtual void mergeFlagsFrom(TSDBase<T> tdFrom)
        {
            Debug.Assert(ti < tdFrom.ti);
            if (tdFrom.depth != topDepth && tdFrom.depth != depth)
            {
                setDepth(tdFrom.depth);
                flags |= /*depthUpUpdatedMask |*/ depthDownUpdatedMask | depthUpdatedMask;
            }
            if (tdFrom.isActual)
            {
//                var actualGFAsMerged = hasActualGFAs && tdFrom.hasActualGFAs;
                setActualInt();
//                if (actualGFAsMerged)
//                    setActualGFAsUpdated();
//                else
//                    Debug.Assert(true);
            }
            if (tdFrom.isGoal)
                setGoal();
            if (tdFrom.isActualTDUpdated)
                setActualTDUpdated();
            if (tdFrom.isOriginal)
                setOriginal();
        }
        #endregion merge

        #region embed
        public void setLT(T lt)
        {
            Debug.Assert(isActual);
            pLTs.Clear();
            pLTs.Add(lt);
        }
        #endregion embed
    }
    public abstract class AGTSD : TSDBase<GT>
    {
        protected AGTSD(GTI gti) : base(gti) {}
        public int gti { get { return ti; } }
        public ISet<GT> lgts { get { return lts; } }
        public GT lgt() { Debug.Assert(lgts.Count == 1); return lgts.First(); }
//        public Type type { get { return pGFAs.Count>0 ? pg} }

        public virtual IType type {
            get {
                if (pGFAs.Count > 0)
                    return pGFAs.First().Key.resultType;
                if (lts.Any())
                    return lts.First().type;
                return null;
            }
        }
        public IEnumerable<GTTI> getGFAs(Function f) { return pGFAs.getOrEmpty(f); }
        public IEnumerable<Function> getGFAFunctions { get { return pGFAs.Keys; } }
        public bool hasGFAFunction(Function f) { return pGFAs.ContainsKey(f); }
        public IEnumerable<Tuple<Function, GTTI>> gfas { get { return from kv in pGFAs from gtti in kv.Value select new Tuple<Function, GTTI>(kv.Key, gtti); } }
        public bool hasGFA(Function f,GTTI gtti) { return pGFAs.ContainsKey(f) && pGFAs[f].Contains(gtti); }
        public void removeGFAInt(Function f, GTTI gtti)
        {
            Debug.Assert(hasGFA(f, gtti));
            pGFAs.remove(f, gtti);
            pNGFAs.remove(f, gtti);
        }
        public IEnumerable<GTTI> sgttis { get { return pSGTTIs; } }

        #region new elements
        public IEnumerable<Tuple<Function, GTTI>> ngfas { get { return from kv in pNGFAs from gtti in kv.Value select new Tuple<Function, GTTI>(kv.Key, gtti); } }
        public virtual void mapGFAInt(Function f,GTTI gtti)
        {
            Debug.Assert(!pGFAs.ContainsKey(f) || !pGFAs[f].Contains(gtti));
            Debug.Assert(type == null || type.isEquivalent(f.resultType));
            pGFAs.insert(f, gtti);
            pNGFAs.insert(f, gtti);
        }
        public override void addLTInt(GT lt)
        {
            if (type != null)
                Debug.Assert(type.isEquivalent(lt.type));
            base.addLTInt(lt);
        }
        internal virtual void mapSGTTI(GTTI sgtti)
        {
//            Debug.Assert(!pSGTTIs.Contains(sgtti));
            pSGTTIs.Add(sgtti);
        }
        internal virtual void removeSGTTI(GTTI sgtti)
        {
//            Debug.Assert(pSGTTIs.Contains(sgtti));
            pSGTTIs.Remove(sgtti);
        }
        public override bool isAnyUpdated { get { return base.isAnyUpdated || pNGFAs.Count > 0; } }
        internal void clearNGFAs() { pNGFAs.Clear(); /*clearGFAUpdated();*/ }
/*        public override void clearNews()
        {
            base.clearNews();
            pNGFAs.Clear();
        }*/

        private IDictionary<Function, ISet<GTTI>> pNGFAs = new Dictionary<Function, ISet<GTTI>>();
        private readonly IDictionary<Function, ISet<GTTI>> pGFAs = new Dictionary<Function, ISet<GTTI>>();
        private readonly ISet<GTTI> pSGTTIs = new HashSet<GTTI>();

        #endregion new elements
    }
    public abstract class AGTTSD : TSDBase<GTT>
    {
        protected AGTTSD(int gtti, IEnumerable<int> gtis) : base(gtti)
        {
            this.gtiT = gtis.ToArray();
        }
        public int gtti { get { return ti; } }
        public readonly int[] gtiT;
        public ISet<GTT> lgtts { get { return lts; } }

        internal void mapSGFAInt(Function f,GTI gti) {
            Debug.Assert(!hasSGFA(f));
            pSGFAs[f] = gti;
        }
        internal void removeSGFAInt(Function f)
        {
            Debug.Assert(hasSGFA(f));
            pSGFAs.Remove(f);
        }
        public bool hasSGFA(Function f) { return pSGFAs.ContainsKey(f); }
        public GTI getSGFA(Function f) { return pSGFAs[f]; }
        public bool tryGetSGFA(Function f,out GTI gti) { return pSGFAs.TryGetValue(f, out gti); }
        public ICollection<Function> allSGFAs { get { return pSGFAs.Keys; } }
        public ICollection<GTI> allSGTIs { get { return pSGFAs.Values; } }
        private readonly IDictionary<Function, GTI> pSGFAs = new Dictionary<Function, GTI>();

        public override void setDepth(int newDepth)
        {
            Debug.Assert(newDepth < USourceStructureNG.maxDepth);
//            Debug.Assert(newDepth > USourceStructureNG.minDepth);
            base.setDepth(newDepth);
        }
        #region new members
        //        public override void clearNews() { base.clearNews(); }
        //        public bool hasNSGFA(Function f) { return pNSGFAs.ContainsKey(f); }
        //        public IEnumerable<Tuple<Function, GTI>> nsgfas { get { return from kv in pNSGFAs from gti in kv.Value select new Tuple<Function, GTI>(kv.Key, gti); } }
        //        public readonly IDictionary<Function, ISet<GTI>> pNSGFAs = new Dictionary<Function, ISet<GTI>>();
        #endregion new members
    }
    public abstract class TSources<T> where T : ECLogicElement
    {
        //Source for one GT or GTT
        //T in {GT,GTT}
    }//public class TSources
    public abstract class TSourceStructure<T,TSD> 
        where T : ECLogicElement
        where TSD : TSDBase<T>
    {
        //Source structure for GTs or GTTs
        //T in {GT,GTT}
        #region instance creation
        protected TSourceStructure() { }
        #endregion instance creation

        #region members
        private readonly IDictionary<TI, TSD> tiToTDMap = new Dictionary<TI, TSD>(); //GTI->GTD
        private readonly IDictionary<T, TSD> ltToTDMap = new Dictionary<T, TSD>();   //LGT->GTD
        private TI lastTI;
        public abstract IUNG gUniverse { get;  }
        #endregion members

        #region accessors
        public int numTDs { get { return tiToTDMap.Count; } }
        public ICollection<TI> allTIs { get { return tiToTDMap.Keys; } }
        public ICollection<T> allLTs { get { return ltToTDMap.Keys; } }
        public ICollection<TSD> allTDs { get { return tiToTDMap.Values; } }
        internal T getLT(TI ti)
        {
            return tiToTDMap[ti].lt();
        }
        public TSD getTD(TI ti) { return tiToTDMap[ti]; }
        public bool tryGetLTTD(T lt, out TSD td)
        {
            return ltToTDMap.TryGetValue(lt, out td);
        }
        public TSD getLTTD(T lt) { return ltToTDMap[lt]; }
        public TI getTI(T lt) { return getLTTD(lt).ti; }
        public bool hasLT(T lt) { return ltToTDMap.ContainsKey(lt); }
        public bool hasTI(TI ti) { return tiToTDMap.ContainsKey(ti); }
        #endregion accessors

        #region mutators
        internal void removeLT(T lt)
        {
            var td = ltToTDMap[lt];
            td.removeLT(lt);
            ltToTDMap.Remove(lt);
        }
        public void setOriginal(TI ti)
        {
            var td = tiToTDMap[ti];
            td.setOriginal();
        }
        public virtual void add(TSD td)
        {
            var ti = td.ti;
            #region consistency
            Debug.Assert(!hasTI(ti));
            Debug.Assert(td.lts.All(lt => !hasLT(lt)));
#if DEBUG
            if (tiBreakCondition(gUniverse, ti))
                Debugger.Break();
#endif
            #endregion consistency
            tiToTDMap[ti] = td;
            foreach (var lt in td.lts)
                ltToTDMap[lt] = td;
        }
        public virtual void mapLTInt(TSD td, T lt)
        {
            #region consistency
            Debug.Assert(ReferenceEquals(tiToTDMap[td.ti], td));
            #endregion consistency
            td.addLTInt(lt);
            ltToTDMap[lt] = td;
        }
        /*        public virtual void removeLT(T lt)
                {
                    var ti = ltToTIMap[lt];
                    ltToTIMap.Remove(lt);
                    getTD(ti).removeLTInt(lt);
                }*/
        public static bool tiBreakCondition(Universe gUniverse, TI ti)
        {
            return false
//                || (gUniverse.index == 8 && (ti == 89));
            ;
        }
        public virtual void removeTDInt(TSD td)
        {
            var ti = td.ti;
            #region consistency
#if DEBUG
            if (tiBreakCondition(gUniverse, ti))
                Debugger.Break();
            Debug.Assert(hasTI(ti));
#endif
            #endregion consistency
            foreach (var lt in td.lts)
                if (ltToTDMap[lt] == td)
                    ltToTDMap.Remove(lt);
            tiToTDMap.Remove(ti);
        }
        #endregion mutators

        #region indexing
        internal int getNewTI()
        {
            var result = lastTI;
            lastTI += 2;
            return result;
        }
/*        internal virtual TI addNewTIInt(TD td)
        {
            tiToTDMap[td.ti] = td;
            return td.ti;
        }*/
        #endregion indexing

        #region embed
        internal void setLT(TI ti,T lt)
        {
            Debug.Assert(!ltToTDMap.ContainsKey(lt));
            var td = getTD(ti);
            Debug.Assert(td.isActual);
            foreach (var mt in td.lts)
                ltToTDMap.Remove(mt);
            td.setLT(lt);
            ltToTDMap[lt] = td;
        }
        #endregion embed

        #region consistency
        public virtual void check()
        {
            foreach (var kv in tiToTDMap)
            {
                foreach (var lt in kv.Value.lts)
                    Debug.Assert(ltToTDMap[lt].ti == kv.Value.ti);
            }
            //TODO
        }
        public virtual bool sourcesCompleteExtras()
        {
            return true;
        }
        public virtual bool sourcesCompleteTINoLTs(TI ti)
        {
            var td = tiToTDMap[ti];
            Debug.Assert(td.ti == ti);
            foreach (var lt in td.lts)
                Debug.Assert(ltToTDMap[lt].ti == ti);
            return true;
        }
        #endregion consistency
    }
    public abstract class USourceStructure<GTSD,GTTSD,GTSS,GTTSS> : USourceStructureNG
        where GTSD : AGTSD
        where GTTSD : AGTTSD
        where GTSS : TSourceStructure<GT,GTSD>
        where GTTSS : TSourceStructure<GTT,GTTSD>
    {
        #region instance creation
        protected USourceStructure(GTSS gtss,GTTSS gttss)
        {
            this.gts = gtss;
            this.gtts = gttss;
        }
        #endregion instance creation

        #region actual
        public virtual void setActual(GTTSD gttd)
        {
            if (gttd.isActual)
                return;
            gttd.setActual();
            foreach (var sgti in gttd.allSGTIs)
            {
                var gtd = gts.getTD(sgti);
//                Debug.Assert(!gtd.isActual);
                gtd.addActualGFAInt();
            }
        }
        #endregion actual

        #region accessors
        public override bool tryGetLGTGTI(GT lgt, out GTI gti)
        {
            GTSD gtd;
            if (tryGetLGTGTD(lgt, out gtd))
            {
                gti = gtd.gti;
                return true;
            }
            else {
                gti = -1;
                return false;
            }
        }
        public bool tryGetLGTGTD(GT lgt, out GTSD gtd) { return gts.tryGetLTTD(lgt, out gtd); }
        public override ISet<GT> getGTIMGTs(GTI gti) { return gts.getTD(gti).lgts; }
        public override ISet<GTT> getGTTIMGTTs(GTTI gtti) { return gtts.getTD(gtti).lgtts; }
        public override Depth getGTIDepth(GTI gti) { return gts.getTD(gti).depth; }
        public void setGTIDepthInt(GTI gti,Depth newDepth)
        {
            Debug.Assert(newDepth >= 0 && newDepth <= maxDepth);
            var gtd = gts.getTD(gti);
            Debug.Assert(gtd.isActual);
            if (newDepth<gtd.depth)
            {
                Debug.Assert(!gtd.sgttis.Any());
                gtd.setDepthInt(newDepth);
            }
        }
        public override GT getGTILGT(GTI gti) { return gts.getLT(gti); }
        public override GTT getGTTILGTT(GTTI gtti) { return gtts.getLT(gtti); }
        public override IEnumerable<Tuple<Function, GTTI>> getGTIActualGFAs(GTI gti) { return from gfa in gts.getTD(gti).gfas where gtts.getTD(gfa.Item2).isActual select gfa; }
        public override IEnumerable<GTTI> getGTIActualSGTTIs(GTI gti) { return from gtti in gts.getTD(gti).sgttis where gtts.getTD(gtti).isActual select gtti; }
        public override IEnumerable<Function> getGTTISGFAs(GTTI gtti) { return gtts.getTD(gtti).allSGFAs; }
        public override GTI getGTTISGFA(Function f, GTTI gtti) { return gtts.getTD(gtti).getSGFA(f); }
        public override IList<GTI> getGTTIGTIs(GTTI gtti) { return gtts.getTD(gtti).gtiT; }
        public int getLGTGTI(GT lgt)
        {
            return gts.getTI(lgt);
        }
        public override int getLGTTGTTI(GTT lgtt)
        {
            return gtts.getTI(lgtt);
        }
        #endregion accessors

        #region mutators
        internal void removeLGTGTD(GT gt)
        {
            //TODO - garbage collection
            var gtd = gts.getLTTD(gt);
            Debug.Assert(gtd.isActual);
            gtd.clearActual();
            gts.removeLT(gt);
/*            foreach (var gfa in gtd.gfas)
                gtts.getTD(gfa.Item2).removeSGFAInt(gfa.Item1);
            gts.removeLTTD(gt);*/
        }
        internal virtual void removeLGTTGTTD(GTT gtt)
        {
            if (!gtts.hasLT(gtt))
                return;
            var gttd = gtts.getLTTD(gtt);
            Debug.Assert(gttd.isActual);
            gttd.clearActual();
            foreach (var sgtd in from sgfa in gttd.allSGFAs select gts.getTD(gttd.getSGFA(sgfa)))
                if (sgtd.gfas.All(gfa => !gtts.getTD(gfa.Item2).isActual))
                    sgtd.clearActualGFAInt();
            gtts.removeLT(gtt);
            //TODO - garbage collection
            /*            var gtti = gttd.gtti;
                        Debug.Assert(gttd.lts.Count == 1);
            //            Debug.Assert(!gttd.allSGFAs.Any());
                        var key = makeGTTKey(gttd.gtis);
                        Debug.Assert(gttKeyToGTTIMap[key] == gtti);
                        gttKeyToGTTIMap.Remove(key);
                        foreach (var gti in new HashSet<GTI>(gttd.gtis))
                            gts.getTD(gti).removeSGTTI(gtti);
                        gtts.removeLTTD(gtt);*/
        }
        #endregion mutators

        #region members
        public readonly GTSS gts;
        public readonly GTTSS gtts;

        protected abstract GTSD makeNewGTD(GTI gti);
        internal GTI makeNewGTI()
        {
            var gti = gts.getNewTI();
            gts.add(makeNewGTD(gti));
            return gti;
        }


        #region GFAs
        public static bool gfaHook(Universe u,GTSD gtd,Function f,GTTSD gttd)
        {
            return false
                //|| u.index == 4 && gtd.gti == 142
                ;
        }
        public void addGFAInt(GTI gti,Function f,GTTI gtti)
        {
            var gtd = gts.getTD(gti);
            var gttd = gtts.getTD(gtti);
            #region precondition
#if DEBUG
            Debug.Assert(!gttd.hasSGFA(f));
            Debug.Assert(!gtd.hasGFA(f, gtti));
            Debug.Assert(gu.inScope(f));
            if (gfaHook(gu, gtd, f, gttd))
                Debugger.Break();
#endif
            #endregion precondition
            mapGFAInt(gtd, f, gttd);
            if (gttd.isActual)
                gtd.addActualGFA();
        }
        public void swingGFA(GTSD gtdFrom,GTSD gtdTo,Function f,GTTI gtti)
        {
            Debug.Assert(gtdFrom.hasGFA(f, gtti));
            gtdFrom.removeGFAInt(f, gtti);
#if DEBUG
            if (gfaHook(gu, gtdTo, f, gtts.getTD(gtti)))
                Debugger.Break();
#endif
            var gttd = gtts.getTD(gtti);
            gttd.removeSGFAInt(f);
            mapGFAInt(gtdTo,f,gttd);//swingGFA
            if (gttd.isActual)
                gtdTo.addActualGFAInt();
        }
        public void swingSGFA(GTTSD gttdFrom, GTTSD gttdTo, Function f)
        {
            Debug.Assert(gttdFrom.hasSGFA(f));
            var gti = gttdFrom.getSGFA(f);
            var gtd = gts.getTD(gti);
#if DEBUG
            if (gfaHook(gu, gtd, f, gttdTo))
                Debugger.Break();
#endif
            Debug.Assert(gtd.hasGFA(f,gttdFrom.gtti));
            gtd.removeGFAInt(f,gttdFrom.gtti);
            mapGFAInt(gtd,f,gttdTo);//swingSGFA
            if (gttdTo.isActual)
                gtd.addActualGFA();
        }
        private void mapGFAInt(GTSD gtd, Function f, GTTSD gttd)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!gttd.hasSGFA(f));
            Debug.Assert(gttd.depth < maxDepth || gtd.isFeasible || (gtd.depth>minDepth && gtd.depth<0));
#endif
            #endregion precondition
            gttd.mapSGFAInt(f, gtd.gti); 
            gtd.mapGFAInt(f, gttd.gtti);
        }
        #endregion GFAs

        #region GTT
        public GTTSD makeGTT(GTI[] gttGTIs)
        {
            return makeGTT(gttGTIs, makeGTTKey(gttGTIs));
        }
        protected abstract GTTSD makeNewGTTD(GTTI gtti, GTI[] gtis);
        public GTTSD makeGTT(GTI[] gtis, GTTKey key)
        {
            GTTSD gttd;
            int gtti;
            if (!gttKeyToGTTIMap.TryGetValue(key, out gtti))
            {
                Debug.Assert(!gttKeyToGTTIMap.ContainsKey(key));
                gtti = getNewGTTI();
                gttd = makeNewGTTD(gtti,gtis);
                gtts.add(gttd);
                setGTTKeyInt(gtti, key);
                foreach (var gti in new HashSet<GTI>(gtis))
                    gts.getTD(gti).mapSGTTI(gtti);
                if (gtis.Length > 0)
                {
                    var gtiDepths = (from gti in gtis select gts.getTD(gti).depth);
                    if (gtiDepths.All(d => d >= 0 && d < maxDepth))
                        gttd.setDepth(gtiDepths.Max());
                }
                else
                    gttd.setDepth(0);
            }
            else
                gttd = gtts.getTD(gtti);
            return gttd;
        }
        public void removeGTTKey(GTTKey key)
        {
            gttKeyToGTTIMap.Remove(key);
        }
        public void setGTTKeyInt(GTTI gtti,GTTKey key)
        {
            Debug.Assert(makeGTTKey(gtts.getTD(gtti).gtiT) == key);
            gttKeyToGTTIMap[key] = gtti;
        }
        public bool hasGTTKey(GTTKey key)
        {
            return gttKeyToGTTIMap.ContainsKey(key);
        }
        public bool tryGetGTTIByKey(GTTKey key, out GTTI gtti)
        {
            return gttKeyToGTTIMap.TryGetValue(key, out gtti);
        }
        #endregion GTT


        public virtual void removeGTDInt(GTSD gtd)
        {
            gts.removeTDInt(gtd);
        }
        public virtual void removeGTTDInt(GTTSD gttd)
        {
            gtts.removeTDInt(gttd);
        }

        #region gtt maps
        private readonly IDictionary<string, int> gttKeyToGTTIMap = new Dictionary<string, int>();
        protected int getGTTI(IEnumerable<int> gtis)
        {
            return gttKeyToGTTIMap[makeGTTKey(gtis)];
        }
        #endregion gtt maps
        #endregion members

        #region garbage
        internal virtual void cutCrap() { }
        internal Universe[] predecessors { get { return gu.pus; } }
        internal abstract IEnumerable<GT> getAllPGTs (int i);
        internal abstract IEnumerable<GT> getGTIPGTs(int i,GTI gti);
        internal abstract IEnumerable<GTT> getAllPGTTs(int i);
        internal abstract IEnumerable<GTT> getGTTIPGTTs(int i, GTTI gtti);
        internal void markPredecessors()
        {
            for (var i = 0; i < predecessors.Length; i++)
            {
                var pu = predecessors[i];
                foreach (var pgt in getAllPGTs(i))
                    pu.addSuccessorUsedGT(pgt);
                foreach (var gttd in gtts.allTDs)
                    pu.addSuccessorUsedGTTs(pu.filterAndTM(from gti in gttd.gtiT select getGTIPGTs(i,gti)),
                        gttd.allSGFAs.Union(gttd.isActual ? gu.getRGFAs(gttd.lt()) : new Function[0]));
                foreach (var rgtt in gu.allRGTTs)
                    pu.addSuccessorUsedGTTs(pu.filterAndTM(from gt in rgtt.gtT select getGTIPGTs(i, getLGTGTI(gt))), new Function[0]);

                foreach (var pp in gu.instantiationIndex.allPPs)
                    if (pu.inScope(pp))
                    {
                        var pgtts = new HashSet<GTT>(from lgtt in gu.instantiationIndex.getPPGTTs(pp) from pgtt in getGTTIPGTTs(i,getLGTTGTTI(lgtt)) select pgtt);
                        if (pgtts.Count > 0)
                            pu.addSuccessorUsedGLRTCache(pp, pgtts);
                    }
            }
        }
        #endregion garbage

        #region consistency
        internal virtual bool IAmClean { get { return true; } }
        public override bool sourcesCompleteGTINoLGTs(GTI gti)
        {
            Debug.Assert(gts.sourcesCompleteTINoLTs(gti));

            var gtd = gts.getTD(gti);
            Debug.Assert(!gtd.isDepthDownUpdated);
            Debug.Assert(!gtd.isDepthUpdated);
            Debug.Assert(!gtd.isAnyUpdated);
            Debug.Assert(!gtd.isActualTDUpdated);
            Debug.Assert(!gtd.nlts.Any());
            Debug.Assert(gtd.isGoal || gtd.depth != topDepth);
            Debug.Assert((gtd.isFeasible || gtd.isActual) == (gtd.depth >= 0 && gtd.depth <= maxDepth));
            Debug.Assert(gtd.hasActualGFAs == gtd.gfas.Any(gfa => gtts.getTD(gfa.Item2).isActual));
            var cDepth = (gtd.isOriginal) ? originalDepth : topDepth;

            #region gfas
            var numActualGFAs = 0;
            foreach (var gfa in gtd.gfas)
            {
                var f = gfa.Item1;
                var gtti = gfa.Item2;
                Debug.Assert(gtts.hasTI(gtti));
                var gttd = gtts.getTD(gtti);
                Debug.Assert(gttd.depth < maxDepth);
                Debug.Assert(gttd.allSGFAs.Contains(f));
                Debug.Assert(gttd.getSGFA(f) == gti);
                Debug.Assert(gttd.hasActualGFAs == false);
                var gfaDepth = gttd.depth + 1;
                if (gfaDepth>0 && gfaDepth < cDepth)
                    cDepth = gfaDepth;
                if (gttd.isFeasible || gttd.isActual)
                {
                    Debug.Assert(gtd.isFeasible || gtd.isActual);
                    if (gttd.isActual)
                        numActualGFAs++;
                }
            }
            if (gtd.isActual)
                Debug.Assert(numActualGFAs > 0);
            foreach (var lgt in gtd.lgts)
                Debug.Assert(gts.getTI(lgt) == gti);
            foreach (var sgtti in gtd.sgttis)
            {
                var sgttd = gtts.getTD(sgtti);
                Debug.Assert(sgttd.gtiT.Contains(gti));
                if (sgttd.depth!=topDepth && (cDepth==topDepth || cDepth<0))
                {
//                    Debug.Assert(sgttd.depth > minDepth);
                    var sgttid = sgttd.depth >= 0 ? -1 : sgttd.depth;
                    if (cDepth==topDepth || sgttid > cDepth)
                        cDepth = sgttid;
                }
            }
//            Debug.Assert(gtd.depth == cDepth);
            #endregion gfas

            #region sgttis
            foreach (var sgtti in gtd.sgttis)
            {
                var sgttd = gtts.getTD(sgtti);
                Debug.Assert(sgttd.gtiT.Contains(gti));
            }
            #endregion sgttis

            #region lgts
            foreach (var lgt in gtd.lgts)
                Debug.Assert(gts.getTI(lgt) == gti);
            #endregion lgts
            return true;
        }
        public override bool sourcesCompleteGTTINoLGTTs(GTTI gtti)
        {
            Debug.Assert(gtts.sourcesCompleteTINoLTs(gtti));
            var gttd = gtts.getTD(gtti);
            Debug.Assert(!gttd.isDepthDownUpdated);
            Debug.Assert(!gttd.isDepthUpdated);
            Debug.Assert(!gttd.isAnyUpdated);
            Debug.Assert(!gttd.isActualTDUpdated);
            Debug.Assert(gttd.isGoal || gttd.depth != topDepth);
            Debug.Assert((gttd.isFeasible || gttd.isActual) == (gttd.depth >= 0 && gttd.depth <= maxDepth));
            Debug.Assert(gttKeyToGTTIMap[makeGTTKey(gttd.gtiT)] == gtti);
            
            #region gtis
            var cDepth = topDepth;
            if (gttd.gtiT.Length > 0)
            {
                var allFeasible = true;
                var allActual = true;
                foreach (var gti in gttd.gtiT)
                {
                    var gtd = gts.getTD(gti);
                    Debug.Assert(gtd.sgttis.Contains(gtti));
                    allFeasible &= gtd.isFeasible;
                    allActual &= gtd.isActual;
                }
                if (gttd.isActual && allFeasible)
                    Debug.Assert(allActual);
                if (gttd.gtiT.All(gti => gts.getTD(gti).isFeasible && gts.getTD(gti).depth<maxDepth))
                    cDepth = (from gti in gttd.gtiT select gts.getTD(gti).depth).Max();
            }
            else
                cDepth = 0;
            #endregion gtis

            #region sgfas
            foreach (var f in gttd.allSGFAs)
            {
                var sgti = gttd.getSGFA(f);
                Debug.Assert(gts.hasTI(sgti));
                var sgtd = gts.getTD(sgti);
                Debug.Assert(sgtd.hasGFA(f, gtti));
                if (sgtd.depth != topDepth)
                    if (cDepth == topDepth || (cDepth < 0))
                    {
                        var sgfad = (sgtd.depth >= 0 ? 0 : sgtd.depth) - 1;
                        if (cDepth == topDepth || cDepth < sgfad)
                            cDepth = sgfad;
                    }

            }
            #endregion sgfas

            Debug.Assert(gttd.depth == cDepth);

            #region lgtts
            foreach (var lgtt in gttd.lgtts)
                Debug.Assert(gtts.getTI(lgtt) == gtti);
            #endregion lgtts
            return true;
        }
        public override bool sourcesCompleteNoLGTs()
        {
#if DEBUG
            gts.sourcesCompleteExtras();
            gtts.sourcesCompleteExtras();
            #region gtds
            foreach (var gtd in gts.allTDs)
                Debug.Assert(sourcesCompleteGTINoLGTs(gtd.gti));
            #endregion gtds

            #region gttds
            foreach (var gttd in gtts.allTDs)
                Debug.Assert(sourcesCompleteGTTINoLGTTs(gttd.gtti));
            #endregion gttds
#endif
            return true;
        }
        public override bool sourcesComplete()
        {
            sourcesCompleteNoLGTs();
            foreach (var gtd in gts.allTDs)
                if (gtd.isActual)
                {
                    Debug.Assert(gtd.lgts.Count == 1);
                    var lgt = gtd.lt();
                    Debug.Assert(gu.gtData.ContainsKey(lgt));
                    Debug.Assert(gts.getLTTD(lgt) == gtd);
                    foreach (var gfa in gtd.gfas)
                        if (gtts.getTD(gfa.Item2).isActual)
                            Debug.Assert(lgt.gfasByFunction[gfa.Item1].ContainsKey(gtts.getTD(gfa.Item2).lt()));
                    foreach (var lgfa in lgt.gfas)
                        Debug.Assert(gtd.hasGFA(lgfa.function, gtts.getLTTD(lgfa.gtt).ti));
                }
                else
                    Debug.Assert(gtd.lgts.Count == 0);
            foreach (var gttd in gtts.allTDs)
                if (gttd.isActual)
                {
                    Debug.Assert(gttd.lgtts.Count == 1);
                    var lgtt = gttd.lt();
                    Debug.Assert(gu.gttData.ContainsKey(lgtt));
                    Debug.Assert(gttd.gtiT.Length == lgtt.gtT.Count);
                    for (var i = 0; i < gttd.gtiT.Length; i++)
                    {
                        Debug.Assert(lgtt.gtT[i] == gts.getTD(gttd.gtiT[i]).lt());
                        Debug.Assert(gttd.gtiT[i] == gts.getLTTD(lgtt.gtT[i]).ti);
                    }
                }
                else
                    Debug.Assert(gttd.lgtts.Count == 0);
            return true;
        }
        #endregion consistency

        #region cleanup
        internal void removeUnused()
        {
            var todoGTDs = new HashSet<GTSD>(from lgt in gu.allGTs select gts.getLTTD(lgt));
            var todoGTTDs = new HashSet<GTTSD>(from lgtt in gu.allGTTs select gtts.getLTTD(lgtt));

            var usedGTDs = new HashSet<GTSD>(todoGTDs);
            var usedGTTDs = new HashSet<GTTSD>(todoGTTDs);
            while (todoGTDs.Count + todoGTTDs.Count>0)
            {
                foreach (var gtd in todoGTDs.ToList())
                    propagateUsed(gtd, todoGTDs, usedGTDs, todoGTTDs, usedGTTDs);
                foreach (var gttd in todoGTTDs.ToList())
                    propagateUsed(gttd, todoGTDs, usedGTDs, todoGTTDs, usedGTTDs);
            }

            foreach (var gttd in gtts.allTDs.ToList())
                if (!usedGTTDs.Contains(gttd))
                    removeGTTD(gttd);
            foreach (var gtd in gts.allTDs.ToList())
                if (!usedGTDs.Contains(gtd))
                    removeGTD(gtd);
        }
        protected virtual void propagateUsed(GTSD gtd, ISet<GTSD> todoGTDs, ISet<GTSD> usedGTDs, ISet<GTTSD> todoGTTDs, ISet<GTTSD> usedGTTDs)
        {
            todoGTDs.Remove(gtd);
        }
        protected virtual void propagateUsed(GTTSD gttd, ISet<GTSD> todoGTDs, ISet<GTSD> usedGTDs, ISet<GTTSD> todoGTTDs, ISet<GTTSD> usedGTTDs)
        {
            foreach (var gti in gttd.gtiT)
            {
                var gtd = gts.getTD(gti);
                if (usedGTDs.Add(gtd))
                    todoGTDs.Add(gtd);
            }
            todoGTTDs.Remove(gttd);
        }
        private void removeGTTD(GTTSD gttd)
        {
            foreach (var f in gttd.allSGFAs)
            {
                var sgti = gttd.getSGFA(f);
                var sgtd = gts.getTD(sgti);
                sgtd.removeGFAInt(f, gttd.gtti);
            }
            foreach (var gti in gttd.gtiT)
                gts.getTD(gti).removeSGTTI(gttd.gtti);
            var gttKey = makeGTTKey(gttd.gtiT);
            Debug.Assert(gttKeyToGTTIMap[gttKey] == gttd.gtti);
            removeGTTKey(gttKey);
            removeGTTDInt(gttd);
        }
        private void removeGTD(GTSD gtd)
        {
            Debug.Assert(!gtd.sgttis.Any());
            foreach (var gfa in gtd.gfas.ToList())
                gtts.getTD(gfa.Item2).removeSGFAInt(gfa.Item1);
            removeGTDInt(gtd);
        }
        #endregion cleanup
    }
}
