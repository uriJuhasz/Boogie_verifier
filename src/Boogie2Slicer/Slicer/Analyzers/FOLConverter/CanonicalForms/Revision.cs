using Slicer.Analyzers.FOLConverter.Formulae;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public interface IRevision
    {
        IDictionary<GT, ISet<GT>> gts { get; }
        IDictionary<GTT, ISet<GTT>> gtts{ get; }
        ISet<GL> assumedUGCs { get; }
        ISet<GAF> gafs { get; }
    }

    public class Revision : IRevision
    {
        public Revision()
        {
            assumedUGCs = new HashSet<GL>();
        }
        public Revision(IRevision other)
            :this()
        {
            foreach (var gtkv in other.gts)
                gts[gtkv.Key] = new HashSet<GT>(gtkv.Value);
            foreach (var gttkv in other.gtts)
                gtts[gttkv.Key] = new HashSet<GTT>(gttkv.Value);
            foreach (var ga in other.assumedUGCs)
                addAssumedUGC(ga);
            foreach (var gaf in other.gafs)
                addGAF(gaf);
        }

        public void update(IRevision other)
        {
#if DEBUG            
            Debug.Assert(!other.gts.Any(gts.Contains));
            Debug.Assert(!other.gtts.Any(gtts.Contains));
            foreach (var ga in other.assumedUGCs)
            {
                Debug.Assert(!gtts.Any(mgtts => mgtts.Value.Contains(ga.gaf.gtt)));
                Debug.Assert(!other.gtts.Any(mgtts => mgtts.Value.Contains(ga.gaf.gtt)));
            }
#endif

            foreach (var ngtkv in other.gts)
            {
                Debug.Assert(!gts.ContainsKey(ngtkv.Key));
                var replacedTerms = new HashSet<GT>();//from rt in ngtkv.Value select groundTerms.ContainsKey(rt
                foreach (var rt in ngtkv.Value)
                {
                    ISet<GT> rts;
                    if (gts.TryGetValue(rt, out rts))
                    {
                        if (rts.Any())
                            replacedTerms.UnionWith(rts);
                        else
                            replacedTerms.Add(rt);
                        gts.Remove(rt);
                    }
                    else
                        replacedTerms.Add(rt);
                }
                gts[ngtkv.Key] = replacedTerms;
            }

            foreach (var ngttkv in other.gtts)
            {
                Debug.Assert(!gtts.ContainsKey(ngttkv.Key));
                var replacedTuples = new HashSet<GTT>();
                foreach (var rtt in ngttkv.Value)
                {
                    ISet<GTT> rtts;
                    if (gtts.TryGetValue(rtt, out rtts))
                    {
                        if (rtts.Any())
                            replacedTuples.UnionWith(rtts);
                        else
                            replacedTuples.Add(rtt);
                        gtts.Remove(rtt);
                    }
                    else
                        replacedTuples.Add(rtt);
                }
                foreach (var gtt in replacedTuples.Union(ngttkv.Value))
                {
                    ISet<GL> e1;
                    if (assumedGLsByGTT.TryGetValue(gtt, out e1))
                        foreach (var ga in e1)
                        {
                            assumedUGCs.Remove(ga);
                            assumedGAsByPredicate[ga.gaf.predicate].Remove(ga);
                        }
                    assumedGLsByGTT.Remove(gtt);
                    
//                    ISet<GroundAtomicFormulaEC> e2;
//                    if (groundAtomicFormulaeByTuple.TryGetValue(gtt, out e2))
                    gafByGTT.Remove(gtt);
                }
                addGTT(ngttkv.Key, replacedTuples);
//                groundTuples[ngttkv.Key] = replacedTuples;
            }

            foreach (var gaf in other.gafs)
            {
                Debug.Assert(upToDate(gaf.gtt));
                addGAF(gaf);
            }

            foreach (var ga in other.assumedUGCs)
            {
                Debug.Assert(upToDate(ga.gaf.gtt));
                addAssumedUGC(ga);
            }
#if DEBUG
/*            foreach (var ga in assumedGroundAtoms)
                Debug.Assert(!groundTuples.Values.Any(mgtts=>mgtts.Contains(ga.gFormula.gArguments)));*/ //removed for performance
#endif
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////
        private bool upToDate(GT gt)
        {
            return !gts.Values.Any(mgts => mgts.Contains(gt));
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////
        private bool upToDate(GTT gtt)
        {
            return !gtts.Values.Any(mgtts => mgtts.Contains(gtt));
        }
        private bool upToDate(FTT tt)
        {
            return tt.All(upToDate);
        }
        private bool upToDate(ITT tt)
        {
            if (tt is GTT)
                return upToDate(tt as GTT);
            else return upToDate(tt as FTT);
        }
        private bool upToDate(IT t)
        {
            if (t is GT)
                return upToDate(t as GT);
            else if (t is FVT)
                return true;
            else 
                return upToDate((t as FFA).ftt);
        }
        public void addGT(GT gt, IEnumerable<GT> mgts)
        {
#if DEBUG            
            Debug.Assert(!mgts.Contains(gt));
            Debug.Assert(!gts.Keys.Contains(gt));
            Debug.Assert(!mgts.Intersect(gts.Keys).Any());
            Debug.Assert(mgts.All(upToDate));
//            Debug.Assert(!groundInequalities.Keys.Intersect(mergedTerms).Any());
#endif
            gts[gt] = new HashSet<GT>(mgts);
        }
        public void addGTT(GTT gtt, IEnumerable<GTT> mgtts)
        {
#if DEBUG
            Debug.Assert(!mgtts.Contains(gtt));
            Debug.Assert(!gtts.Keys.Contains(gtt));
//            Debug.Assert(!mergedTuples.Intersect(groundTuples.Keys).Any());
            Debug.Assert(mgtts.All(upToDate));
            Debug.Assert(!mgtts.Intersect(from ga in assumedUGCs select ga.gaf.gtt).Any());
            foreach (var mgtt in mgtts)
            {
                Debug.Assert(!assumedGLsByGTT.ContainsKey(mgtt));
                Debug.Assert(!gafByGTT.ContainsKey(mgtt));
            }
#endif
            gtts[gtt] = new HashSet<GTT>(mgtts);
        }
        public void addAssumedUGC(GL gl)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!isAssumed(gl));
            Debug.Assert(!isAssumed(gl.gNegate));
            Debug.Assert(upToDate(gl.gaf.gtt));
#endif
            #endregion precondition
            assumedUGCs.Add(gl);
            {
                ISet<GL> gabt;
                if (!assumedGLsByGTT.TryGetValue(gl.gaf.gtt, out gabt))
                    assumedGLsByGTT[gl.gaf.gtt] = gabt = new HashSet<GL>();
                gabt.Add(gl);
            }
            {
                ISet<GL> gabp;
                if (!assumedGAsByPredicate.TryGetValue(gl.gaf.predicate, out gabp))
                    assumedGAsByPredicate[gl.gaf.predicate] = gabp = new HashSet<GL>();
                gabp.Add(gl);
            }

        }
        public void removeAssumedUGC(GL gl)
        {
            if (!isAssumed(gl))
                return; //todo why?
            #region precondition
#if DEBUG
            Debug.Assert(isAssumed(gl));
#endif
            #endregion precondition
            assumedUGCs.Remove(gl);
            {
                ISet<GL> gabt;
                if (assumedGLsByGTT.TryGetValue(gl.gaf.gtt, out gabt))
                    gabt.Remove(gl);
            }
            {
                ISet<GL> gabp;
                if (assumedGAsByPredicate.TryGetValue(gl.gaf.predicate, out gabp))
                    gabp.Remove(gl);
            }

        }
        public bool isAssumed(GC gc) { return assumedGCs.Contains(gc); }
        public bool isAssumed(GL gl) { return assumedUGCs.Contains(gl); }
        public void addAssumedGC(GC gc)
        {
            #region precondition
#if DEBUG
            foreach (var ga in gc.gls)
                Debug.Assert(upToDate(ga.gaf.gtt));
#endif
            #endregion precondition
            assumedGCs.Add(gc);
        }
        public void removeAssumedGC(GC gc)
        {
            #region precondition
#if DEBUG
            Debug.Assert(isAssumed(gc));
#endif
            #endregion precondition
            assumedGCs.Remove(gc);
        }
        public void addGAF(GAF gaf)
        {
#if DEBUG
            Debug.Assert(!gafByGTT.ContainsKey(gaf.gtt) || !gafByGTT[gaf.gtt].Contains(gaf));
            Debug.Assert(upToDate(gaf.gtt));
#endif
            {
                ISet<GAF> e;
                if (!gafByGTT.TryGetValue(gaf.gtt, out e))
                    gafByGTT[gaf.gtt] = e = new HashSet<GAF>();
                e.Add(gaf);
            }
        }
        internal void removeGAF(GAF gaf)
        {
#if DEBUG
            Debug.Assert(gafByGTT.ContainsKey(gaf.gtt));
//            Debug.Assert(upToDate(gaf.gArguments));
#endif
            gafByGTT[gaf.gtt].Remove(gaf);
        }

        public bool any
        {
            get
            {
                return gts.Count > 0 || gtts.Count > 0 || assumedUGCs.Count > 0 || assumedGCs.Count>0; 
            }
        }
        ////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////
        //Merged/new
        private readonly IDictionary<GT,  ISet<GT> > pGTs  = new Dictionary<GT,  ISet<GT> >();
        private readonly IDictionary<GTT, ISet<GTT>> pGTTs = new Dictionary<GTT, ISet<GTT>>();

        public IDictionary<GT,  ISet<GT >> gts  { get{ return pGTs;  } }
        public IDictionary<GTT, ISet<GTT>> gtts { get{ return pGTTs; } }

        public IDictionary<GTT, ISet<GAF>> pGAFByGTT = new Dictionary<GTT, ISet<GAF>>();
        public IDictionary<GTT, ISet<GAF>> gafByGTT { get { return pGAFByGTT; } }

        public ISet<GL> assumedUGCs{get;private set;}
        internal readonly IDictionary<GTT, ISet<GL>> assumedGLsByGTT = new Dictionary<GTT, ISet<GL>>();
        public readonly IDictionary<IPredicate, ISet<GL>> assumedGAsByPredicate = new Dictionary<IPredicate, ISet<GL>>();
        public ISet<GAF> gafs { get { return new HashSet<GAF>(from gttKV in gafByGTT from gfa in gttKV.Value select gfa); } }

        public ISet<GC> assumedGCs = new HashSet<GC>();

        
        public readonly IDictionary<GT, ISet<GT>> orphanGTMap = new Dictionary<GT, ISet<GT>>();
        internal void addOrphanGT(GT gt, GT ngt)
        {
            Debug.Assert(gts.ContainsKey(ngt));
            ISet<GT> ogts;
            if (!orphanGTMap.TryGetValue(ngt, out ogts))
                orphanGTMap[ngt] = ogts = new HashSet<GT>();
            ogts.Add(gt);
        }

        public readonly IDictionary<GTT, ISet<GTT>> orphanGTTMap = new Dictionary<GTT, ISet<GTT>>();
        internal void addOrphanGTT(GTT gtt, GTT ngtt)
        {
            Debug.Assert(gtts.ContainsKey(ngtt));
            ISet<GTT> ogtts;
            if (!orphanGTTMap.TryGetValue(ngtt, out ogtts))
                orphanGTTMap[ngtt] = ogtts = new HashSet<GTT>();
            ogtts.Add(gtt);
        }

    }
}
