using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Analyzers.FOLConverter.Clauses;
using System;
using TI = System.Int32;
using GTI = System.Int32;
using GTTI = System.Int32;
using JECAKey = System.String;
using JECITKey = System.String;
using JI = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public abstract class JEC<T> : NormalizedStringElement, IComparable<JEC<T>>
        where T : ECLogicElement
    {
        //An equivalence class in the meet of the join and a joinee
        //T in {GT,GTT}
        #region instance creation
        protected JEC()
        {
            index = lastIndex;
            lastIndex += 2;
        }
        /*public JEC(IEnumerable<T> jts, IEnumerable<int> tis,IEnumerable<T> lts)
        {
            this.pJTs = new HashSet<T>(jts);
            this.pTIs = new HashSet<int>(tis);
            this.pLTs = new HashSet<T>(lts);
        }*/
        private static int lastIndex = 0;
        public readonly int index;
        public override int GetHashCode()
        {
            return index.GetHashCode();
        }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public int CompareTo(JEC<T> other)
        {
            return index.CompareTo(other.index);
        }
        #endregion instance creation

        #region strings
        public string ToStringN() { return index.ToString(); }
        public string ToStringB() { return index.ToString(); }
        #endregion strings

        #region members
        private readonly ISet<T> pJTs = new HashSet<T>();
        private readonly ISet<TI> pTIs = new HashSet<TI>();
        public IEnumerable<T> jts { get { return pJTs; } }
        public ISet<TI> tis { get { return pTIs; } }
        #endregion members

        #region mapping
        public bool hasJT(T jt) { return pJTs.Contains(jt); }
        internal void mapJTInt(T jt)
        {
            Debug.Assert(!hasJT(jt));
            pJTs.Add(jt);
        }
        internal void mapTIsInt(IEnumerable<TI> ntis)
        {
            foreach (var nti in ntis)
                mapTIInt(nti);
        }
        internal void mapTIInt(TI nti)
        {
            Debug.Assert(!pTIs.Contains(nti));
            pTIs.Add(nti);
        }
        internal void removeJT(T jt)
        {
            Debug.Assert(pJTs.Contains(jt));
            pJTs.Remove(jt);
        }
        internal void removeTIInt(TI ti)
        {
            Debug.Assert(pTIs.Contains(ti));
            pTIs.Remove(ti);
        }
        #endregion mapping
    }
    public class JECGT : JEC<GT>
    {
        #region instance creation
        internal JECGT() { }
        public override string ToString() { return "JECGT<" + index.ToString() + ">"; }
        #endregion instance creation

        #region members
        #endregion members

        #region accessors
        public IEnumerable<GFA> jgfas(Function f) { return from jgt in jts from jgfa in jgt.getGFAsByFunction(f) select jgfa; }
        #endregion accessors
    }
    public class JECGTT : JEC<GTT>
    {
        #region instance creation
        internal JECGTT(IEnumerable<JECGT> jecgtT) { this.pJECGTs = jecgtT.ToArray(); }
        public override string ToString() { return "JECGTT<" + index.ToString() + ">"; }
        private readonly JECGT[] pJECGTs;
        #endregion instance creation

        #region accessors
        public JECGT[] jecgtT { get { return pJECGTs; } }
        public int n { get { return pJECGTs.Length; } }
        #endregion accessors

        #region mutators
        public void updateJECGTA(JECGT[] njecgtA)
        {
#if DEBUG
            Debug.Assert(njecgtA.Length == jecgtT.Length);
            if (JSourceStructure.jecgtTBreakCondition(0, njecgtA))
                Debugger.Break();
#endif
            for (var i = 0; i < njecgtA.Length; i++)
                pJECGTs[i] = njecgtA[i];
        }
        #endregion mutators

        #region dead joinee
        #endregion dead joinee
    }
    public class JSources<T, JEC> : TSources<T>
        where T : ECLogicElement
        where JEC : JEC<T>
    {
        //Sources for on GT or GTT
        //T in {GT,GTT}
        #region instance creation
        public JSources(JEC[] jecs)
        {
            var jn = jecs.Length;
            Debug.Assert(jn == 1 || jn == 2);
            pJECs = jecs;
            pNJTs = (from j in jecs select new HashSet<T>()).ToArray();
        }
        #endregion instance creation

        #region members
        private readonly ISet<T> pLTs = new HashSet<T>();
        private JEC[] pJECs;
        private ISet<T>[] pNJTs;
        #endregion members

        #region accessors
        public int jn { get { return pJECs.Length; } }
        public JEC jec(int j) { return pJECs[j]; }
        public IEnumerable<T> jts(JI j) { return jec(j).jts; }
        public IEnumerable<T> njts(JI j) { return pNJTs[j]; }
        public bool hasJT(JI j, T jt) { return pJECs[j].hasJT(jt); }
        internal JEC[] jecA { get { return pJECs; } }
        #endregion accessors

        #region mutators
        public void clearNewSources()
        {
            for (var j = 0; j < jn; j++)
                pNJTs[j].Clear();
        }
        internal void setJECInt(JI j, JEC jec)
        {
            pJECs[j] = jec;
        }
        public void mapJTInt(JI j, T jt)
        {
            pNJTs[j].Add(jt);
        }
        public void renewJTs()
        {
            for (var j = 0; j < jn; j++)
                foreach (var jt in pJECs[j].jts)
                    mapJTInt(j, jt);
        }
        public void removeJTInt(JI j, T jt)
        {
            pNJTs[j].Remove(jt);
        }
        #endregion mutators

        #region dead joinee
        public void joineeDied(JI lj)
        {
            pJECs = new[] { pJECs[lj] };
            pNJTs = new[] { new HashSet<T>() };
        }
        #endregion dead joinee

    }//public class JSources<T>
    public interface JTSDBase<T, JEC> : ITSDBase<T>
        where T : ECLogicElement
        where JEC : JEC<T>
    {
        JSources<T, JEC> jss { get; }
        JEC jec(int j);
        void setJECInt(JI j, JEC jec);
        void mapJTInt(JI j, T jt);
        JEC[] jecA { get; }
        void joineeDied(JI lj);
        void renewJTs();
        void removeJTInt(JI j, T jt);
    }
    public sealed class JGTSD : AGTSD, JTSDBase<GT, JECGT>
    {
        #region instance creation
        public JGTSD(int gti, JSources<GT, JECGT> js)
            : base(gti)
        {
            pjss = js;
        }
        public override string ToString() { return "JGTD<" + gti.ToString() + ">" + (lgts.Count == 1 ? "|" + lgt().ToString() + "|" : ""); }
        #endregion instance creation

        #region accessors
        public JECGT[] jecA { get { return pjss.jecA; } }
        public int jn { get { return pjss.jn; } }
        public JECGT jec(int j) { return jss.jec(j); }
        public IEnumerable<GTI> ecGTIs(int j) { return jss.jec(j).tis; }
        public JSources<GT, JECGT> jss { get { return pjss; } }
        public IEnumerable<GT> jgts(int j) { return jss.jec(j).jts; }
        public IEnumerable<GT> njgts(int j) { return jss.njts(j); }

        public bool hasJGT(JI j, GT jgt) { return jec(j).hasJT(jgt); }
        public override bool hasNewSources { get { return Enumerable.Range(0, jn).Any(j => pjss.njts(j).Any()); } }
        public override void clearNewsFlags() { base.clearNewsFlags(); clearNewSources(); }
        public override bool isAnyUpdated { get { return base.isAnyUpdated || hasNewSources; } }
        #endregion accessors

        #region mutators
        public void clearNewSources() { pjss.clearNewSources(); }
        public void setJECInt(JI j, JECGT jec)
        {
            Debug.Assert(jec.tis.Contains(ti));
            pjss.setJECInt(j, jec);
        }
        public void mapJTInt(JI j, GT jgt)
        {
            jss.mapJTInt(j, jgt);
        }
        public void renewJTs()
        {
            pjss.renewJTs();
        }
        public void removeJTInt(JI j, GT jt)
        {
            pjss.removeJTInt(j, jt);
        }
        #endregion mutators

        #region members
        private readonly JSources<GT, JECGT> pjss;
        #endregion members

        #region dead joinee
        public void joineeDied(JI lj)
        {
            pjss.joineeDied(lj);
        }
        #endregion dead joinee
    }
    public sealed class JGTTSD : AGTTSD, JTSDBase<GTT, JECGTT>
    {
        #region instance creation
        public JGTTSD(int gtti, int[] gtis, JSources<GTT, JECGTT> js)
            : base(gtti, gtis)
        {
            this.pjss = js;
        }
        public override string ToString() { return "JGTTD<" + gtti.ToString() + ">[" + Operator.commaSeparatedList(from gti in gtiT select gti.ToString()) + "]"; }
        #endregion instance creation

        #region accessors
        public int jn { get { return pjss.jn; } }
        public JECGTT jec(int j) { return jss.jec(j); }
        public JECGTT[] jecA { get { return pjss.jecA; } }
        public JSources<GTT, JECGTT> jss { get { return pjss; } }
        public IEnumerable<GTT> jgtts(int j) { return jss.jts(j); }
        public IEnumerable<GTT> njgtts(int j) { return jss.njts(j); }
        public bool hasJGTT(JI j, GTT jgtt) { return pjss.hasJT(j, jgtt); }
        public override bool hasNewSources { get { return Enumerable.Range(0, jn).Any(j => pjss.njts(j).Any()); } }
        public void clearNewSources() { pjss.clearNewSources(); }
        public override void clearNewsFlags() { base.clearNewsFlags(); clearNewSources(); }
        public override bool isAnyUpdated { get { return base.isAnyUpdated || hasNewSources; } }
        #endregion accessors

        #region members
        private readonly JSources<GTT, JECGTT> pjss;
        #endregion members

        #region mutators
        public void setJECInt(JI j, JECGTT jec)
        {
            Debug.Assert(jec.tis.Contains(ti));
            pjss.setJECInt(j, jec);
        }
        public void mapJTInt(JI j, GTT jgtt)
        {
            jss.mapJTInt(j, jgtt);
        }
        public void renewJTs()
        {
            pjss.renewJTs();
        }
        public void removeJTInt(JI j, GTT jt)
        {
            pjss.removeJTInt(j, jt);
        }
        #endregion mutators

        #region dead joinee
        public void joineeDied(JI lj)
        {
            pjss.joineeDied(lj);
        }
        #endregion dead joinee

    }
    public class JTSourceStructure<T, TSD, JEC> : TSourceStructure<T, TSD>
        where T : ECLogicElement
        where TSD : TSDBase<T>, JTSDBase<T, JEC>
        where JEC : JEC<T>
    {
        //Source structure for GT or GTT
        //T in {GT,GTT}
        #region instance creation
        public JTSourceStructure(JU ju)
        {
            Debug.Assert(ju.pus.Length <= 2);
            this.ju = ju;
            jtToJECMap = (from j in js select new Dictionary<T, JEC>()).ToArray();
#if DEBUG
            jecMergeMap = (from j in js select new Dictionary<JEC, JEC>()).ToArray();
#endif
        }
        public override IUNG gUniverse { get { return ju; } }
        public override string ToString() { return "JTSource<" + ju.ToString() + ">"; }
        #endregion instance creation

        #region members
        private readonly JU ju;
        public int jn { get { return pus.Length; } }
        private Universe[] pus { get { return ju.pus; } } //joinee universes - 1 or 2
        private int[] js { get { return ju.js; } } //joinee indices - in {<0>,<0,1>}
        private IDictionary<T, JEC>[] jtToJECMap; //JI->JGT->JEC 
        private readonly IDictionary<JECAKey, TI> jecKeyToTIMap = new Dictionary<JECAKey, TI>();
        #endregion members

        #region mapping
        public override void add(TSD td)
        {
            base.add(td);
            var ti = td.ti;
            var key = makeJECAKey(td.jecA);
            insertJECKeyInt(key, ti);
            foreach (var j in js)
                td.jec(j).mapTIInt(ti);
        }
        internal void remapJTToJECInt(JI j, T jt, JEC jec)
        {
            removeJTInt(j, jt);
            mapNewJTToJECInt(j, jt, jec);
        }
        internal void mapNewJTToJECInt(JI j, T jt, JEC jec)
        {
            Debug.Assert(!jtToJECMap[j].ContainsKey(jt));
            mapJTToJECInt(j, jt, jec);
        }
        private void mapJTToJECInt(JI j, T jt, JEC jec)
        {
            setJTInt(j, jt, jec);
            jec.mapJTInt(jt);
            foreach (var ti in jec.tis)
                getTD(ti).mapJTInt(j, jt);
        }
        internal void remapTIToJECInt(JI j, TSD td, JEC jec)
        {
            jec.mapTIInt(td.ti);
            td.setJECInt(j, jec);
        }
        public void mergeTDInt(TSD tdFrom, TSD tdTo)
        {
            var key = makeJECAKey(tdTo.jecA);
            TI ti2;
            if (jecKeyToTIMap.TryGetValue(key, out ti2))
                if (ti2 == tdFrom.ti)
                    jecKeyToTIMap[key] = tdTo.ti;
        }
        public override void removeTDInt(TSD td)
        {
            foreach (var j in js)
            {
                var jec = td.jec(j);
                jec.removeTIInt(td.ti);
                if (!jec.tis.Any())
                {
                    foreach (var jt in jec.jts)
                    {
                        Debug.Assert(jtToJECMap[j][jt] == jec);
                        removeJTInt(j, jt);
                    }
                }
            }
            base.removeTDInt(td);
            var key = makeJECAKey(td.jecA);
            TI tti;
            if (jecKeyToTIMap.TryGetValue(key, out tti) && tti == td.ti)
                removeJECKeyInt(key);
        }
        private void insertJECKeyInt(JECAKey key, TI ti)
        {
            #region consistency
#if DEBUG
            //            Debug.Assert(!jecKeyToTIMap.ContainsKey(key));
            Debug.Assert(makeJECAKey(getTD(ti).jecA) == key);
            Debug.Assert((getTD(ti) is JGTTSD) || !jecKeyToTIMap.ContainsKey(key));
#endif
            #endregion consistency
            if (!jecKeyToTIMap.ContainsKey(key))
                jecKeyToTIMap[key] = ti;
        }
        private void removeJECKeyInt(JECAKey key)
        {
            jecKeyToTIMap.Remove(key);
        }

        #endregion mapping

        #region accessors
        internal bool ltHasJTsForAll(T lt) { return js.All(j => getLTTD(lt).jec(j).jts.Any()); }
        internal bool hasJT(JI j, T jt) { return jtToJECMap[j].ContainsKey(jt); }
        internal ICollection<T> getAllJTs(JI j) { return jtToJECMap[j].Keys; }
        internal IEnumerable<T> getJTs(JI j, TI i) { return getTD(i).jss.jts(j); }
        internal IEnumerable<T> getJTs(JI j, T t) { return getLTTD(t).jss.jts(j); }
        internal IEnumerable<TI> getJTTIs(JI j, T jt) { return jtToJECMap[j][jt].tis; }
        internal T getJTALT(T[] jtA) { return getJECATD((from j in js select getJTJEC(j, jtA[j])).ToArray()).lt(); }
        private bool tryGetJTAJECA(T[] jtA, out JEC[] jecA)
        {
            jecA = new JEC[jn];
            foreach (var j in js)
                if (!tryGetJTJEC(j, jtA[j], out jecA[j]))
                    return false;
            return true;
        }
        internal bool hasActualJTA(T[] jtA)
        {
            JEC[] jecA;
            if (!tryGetJTAJECA(jtA, out jecA))
                return false;
            return hasActualJECA(jecA);
        }
        internal bool tryGetJTALT(T[] jtA, out T lt)
        {
            JEC[] jecA;
            if (!tryGetJTAJECA(jtA, out jecA))
            {
                lt = default(T);
                return false;
            }
            TSD td;
            if (tryGetJECATD(jecA, out td) && td.isActual)
            {
                lt = td.lt();
                return true;
            }
            else
            {
                lt = default(T);
                return false;
            }
        }
        private JECAKey makeJECAKey(JEC[] jecA)
        {
            return HA<JEC>.makeString(jecA);
        }
        internal bool tryGetJECATD(JEC[] jecA, out TSD td)
        {
            TI ti;
            var key = makeJECAKey(jecA);
            if (jecKeyToTIMap.TryGetValue(key, out ti))
            {
                td = getTD(ti);
                return true;
            }
            else
            {
                td = default(TSD);
                return false;
            }
        }
        internal TSD getJECATD(JEC[] jecA) { return getTD(jecKeyToTIMap[makeJECAKey(jecA)]); }
        internal bool hasActualJECA(JEC[] jecA)
        {
            var key = makeJECAKey(jecA);
            TI ti;
            return jecKeyToTIMap.TryGetValue(key, out ti) && getTD(ti).isActual;
        }
        internal bool hasJECA(JEC[] jecA)
        {
            var key = makeJECAKey(jecA);
            return jecKeyToTIMap.ContainsKey(key);
        }
        internal JEC getJTJEC(int j, T jt) { return jtToJECMap[j][jt]; }
        internal bool tryGetJTJEC(int j, T jt, out JEC jec)
        {
            return jtToJECMap[j].TryGetValue(jt, out jec);
        }
        internal ISet<T> getJTLTs(JI j, T jt)
        {
            return new HashSet<T>(from ti in getJTTIs(j, jt) from lt in getTD(ti).lts select lt);
        }
        internal bool tryGetJTLTs(JI j, T jt, out ISet<T> lts)
        {
            ISet<TI> tis;
            if (tryGetJTTIs(j, jt, out tis))
            {
                lts = new HashSet<T>(from ti in tis from lt in getTD(ti).lts select lt);
                return true;
            }
            else
            {
                lts = null;
                return false;
            }
        }
        internal bool tryGetJTTIs(JI j, T jt, out ISet<TI> tis)
        {
            JEC jec;
            if (jtToJECMap[j].TryGetValue(jt, out jec))
            {
                tis = jec.tis;
                return true;
            }
            else
            {
                tis = null;
                return false;
            }

        }
        #endregion accessors

        #region merge
#if DEBUG
        public IDictionary<JEC, JEC>[] jecMergeMap;
#endif
        internal void mergeJECInt(JI j, JEC jecFrom, JEC jecTo,
            Action<TI> enqueuePropagateTI,
            Action<TI, TI> enqueueMergeTI)
        {
#if DEBUG
            Debug.Assert(!jecMergeMap[j].ContainsKey(jecFrom));
            Debug.Assert(!jecMergeMap[j].ContainsKey(jecTo));
            jecMergeMap[j][jecFrom] = jecTo;
#endif
            Debug.Assert(jecFrom.CompareTo(jecTo) > 0);
            var hasNewJTs = jecFrom.jts.Except(jecTo.jts).Any();
            foreach (var jt in jecFrom.jts)
                remapJTToJECInt(j, jt, jecTo);
            //            foreach (var ti in jecFrom.tis)
            //                remapTIToJECInt(j, ti, jecTo);
            foreach (var ti in jecFrom.tis.ToList())
            {
                var td = getTD(ti);
                Debug.Assert(td.jec(j) == jecFrom);
                var okey = makeJECAKey((from j2 in js select td.jec(j2)).ToArray());
                //                Debug.Assert(!jecKeyToTIMap.ContainsKey(okey) || jecKeyToTIMap[okey] == ti);
                removeJECKeyInt(okey);
                remapTIToJECInt(j, td, jecTo);
                var nkey = makeJECAKey((from j2 in js select td.jec(j2)).ToArray());
                Debug.Assert(okey != nkey);
                TI oti;
                if (jecKeyToTIMap.TryGetValue(nkey, out oti))
                    enqueueMergeTI(ti, oti);
                else
                    insertJECKeyInt(nkey, ti);
                td.renewJTs();
            }
            foreach (var ti in jecTo.tis)
                if (getTD(ti).isAnyUpdated)
                    enqueuePropagateTI(ti);
        }
        #endregion merge

        #region cleanup
        private void setJTInt(JI j,T jt,JEC jec)
        {
            Debug.Assert(!jtToJECMap[j].ContainsKey(jt));
#if DEBUG
            if ((jt is GTT) && Universe.gttBreakCond(pus[j], jt as GTT))
                Debugger.Break();
            if ((jt is GT) && Universe.gtBreakCond(pus[j], jt as GT))
                Debugger.Break();
#endif
            jtToJECMap[j][jt] = jec;
        }
        private void removeJTInt(JI j, T jt)
        {
            Debug.Assert(jtToJECMap[j].ContainsKey(jt));
            #region debug
#if DEBUG
            if ((jt is GTT) && Universe.gttBreakCond(pus[j], jt as GTT))
                Debugger.Break();
            if ((jt is GT) && Universe.gtBreakCond(pus[j], jt as GT))
                Debugger.Break();
#endif
            #endregion debug
            jtToJECMap[j].Remove(jt);
        }

        internal void removeCrapSources(TI ti, Func<JI, T, bool> has)//,Action<JI,T,JEC> onRemove)
        {
            var gtd = getTD(ti);
            foreach (var j in js)
            {
                var jec = gtd.jec(j);
                foreach (var jt in jec.jts.ToList())
                    if (!has(j, jt))
                    {
//                        onRemove(j, jt,jec);
                        removeJTInt(j, jt);
                        jec.removeJT(jt);
                    }
            }
        }
        #endregion cleanup

        #region sync
        internal void removeJT(JI j, T jt)
        {
            Debug.Assert(hasJT(j, jt));
            var jec = jtToJECMap[j][jt];
            removeJTInt(j, jt);
            jec.removeJT(jt);
            foreach (var ti in jec.tis)
                getTD(ti).removeJTInt(j, jt);
        }
        #endregion sync

        #region consistency
        public override bool sourcesCompleteExtras()
        {
            base.sourcesCompleteExtras();
            foreach (var kv in jecKeyToTIMap)
            {
                var key = kv.Key;
                var ti = kv.Value;
                var td = getTD(ti);
                var key2 = makeJECAKey(td.jecA);
                Debug.Assert(key == key2);
            }
            return true;
        }
        public override bool sourcesCompleteTINoLTs(TI ti)
        {
            Debug.Assert(base.sourcesCompleteTINoLTs(ti));
            var td = getTD(ti);
            var key = makeJECAKey(td.jecA);
            Debug.Assert(jecKeyToTIMap[key] == ti);
            foreach (var j in js)
                foreach (var jt in td.jss.jts(j))
                    Debug.Assert(ReferenceEquals(jtToJECMap[j][jt], td.jss.jecA[j]));
            return true;
        }
        #endregion consistency

        #region dead joinee
        public void joineeDied(JI lj, Action<TI, TI> enqueueMergeTI)
        {
            //            Debug.Assert(!pus[lj].isRefuted);
            //            Debug.Assert(pus[1-lj].isRefuted);
            {
                foreach (var td in allTDs)
                    td.joineeDied(lj);

                jtToJECMap = new[] { jtToJECMap[lj] };

                foreach (var kv in this.jecKeyToTIMap.ToList())
                {
                    var ti = kv.Value;
                    var td = getTD(ti);
                    removeJECKeyInt(kv.Key);
                    var nkey = makeJECAKey(new[] { td.jec(0) });
                    TI oti;
                    if (jecKeyToTIMap.TryGetValue(nkey, out oti))
                        enqueueMergeTI(ti, oti);
                    else
                        insertJECKeyInt(nkey, ti);
                }


            }
#if DEBUG
            jecMergeMap = new[] { jecMergeMap[lj] };
#endif
        }
        #endregion dead joinee
    }
    public sealed class JSourceStructure : USourceStructure<JGTSD, JGTTSD, JTSourceStructure<GT, JGTSD, JECGT>, JTSourceStructure<GTT, JGTTSD, JECGTT>>
    {
        #region instance creation
        public JSourceStructure(JU ju)
            : this(ju, ju.pus, ju.js)
        {
            jecTKeyToJECGTT = (from j in js select new Dictionary<JECAKey, JECGTT>()).ToArray();
            pus = ju.pus;
        }
        private JSourceStructure(JU ju, Universe[] jus, int[] js)
            : base(new JTSourceStructure<GT, JGTSD, JECGT>(ju), new JTSourceStructure<GTT, JGTTSD, JECGTT>(ju))
        {
            this.ju = ju;
            //            this.js = js;
            //            this.jn = js.Length;
        }
        #endregion instance creation

        #region map elements
        public static JECITKey makeJECGTTKey(JI j, JECGT[] jecgtT)
        {
            return /*j.ToString() + ":" +*/ HA<JECGT>.makeString(jecgtT);
        }

        internal JECGT makeNewJECGT(JI j)
        {
            return new JECGT();
        }
        internal JECGTT makeJECGTT(JI j, IEnumerable<JECGT> jecgtT)
        {
            var jecgtA = jecgtT.ToArray();
            var key = makeJECGTTKey(j, jecgtA);
            JECGTT jec;
            if (!jecTKeyToJECGTT[j].TryGetValue(key, out jec))
                jec = makeNewJECGTTInt(j, jecgtA, key);
            return jec;

        }
        public static bool jecgtTBreakCondition(JI j, JECGT[] jecgtT)
        {
            return false;// (from jecgt in jecgtT select jecgt.index).SequenceEqual(new[] { 960,960 });
                         //            var key = makeJECGTTKey(j,jecgtT);
                         //            return key == @"0:[352][0][268]" || key==@"1:[352][0][268]";
        }
        internal JECGTT makeNewJECGTT(JI j, IEnumerable<JECGT> jecgts)
        {
            var jecgtT = jecgts.ToArray();
            var key = makeJECGTTKey(j, jecgtT);
            return makeNewJECGTTInt(j, jecgtT, key);
        }
        internal JECGTT makeNewJECGTTInt(JI j, JECGT[] jecgtT, JECAKey key)
        {
#if DEBUG
            Debug.Assert(key == makeJECGTTKey(j, jecgtT));
#endif
            var jec = new JECGTT(jecgtT);
#if DEBUG
            if (jecgtTBreakCondition(j, jecgtT))
                Debugger.Break();
#endif
            setJECTKeyInt(j, key, jec);
            return jec;
        }
        private void setJECTKeyInt(JI j,JECITKey key,JECGTT jec)
        {
            Debug.Assert(!jecTKeyToJECGTT[j].ContainsKey(key));
            jecTKeyToJECGTT[j][key] = jec;
        }
        private void removeJECTKeyInt(JI j, JECITKey key)
        {
            Debug.Assert(jecTKeyToJECGTT[j].ContainsKey(key));
            jecTKeyToJECGTT[j].Remove(key);
        }
        internal JGTSD makeNewGTD(JECGT[] jecgtA) { return makeNewGTDInt(jecgtA); }
        protected override sealed JGTSD makeNewGTD(GTI gti) { return makeNewGTDInt(gti, (from j in js select makeNewJECGT(j)).ToArray()); }
        public JGTSD makeNewGTDInt(GTI gti, JECGT[] jecgtA)
        {
            Debug.Assert(!gts.hasTI(gti));
            Debug.Assert(!gts.hasJECA(jecgtA));
            var gtd = new JGTSD(gti, new JSources<GT, JECGT>(jecgtA));
            return gtd;
        }
        public JGTSD makeNewGTDInt(JECGT[] jecgtA)
        {
            var gti = gts.getNewTI();
            var gtd = makeNewGTDInt(gti, jecgtA);
            gts.add(gtd);
            return gtd;
        }
        protected override JGTTSD makeNewGTTD(GTTI gtti, GTI[] gtis)
        {
            return new JGTTSD(gtti, gtis, new JSources<GTT, JECGTT>((
                from j in js
                let jecgtA = from gti in gtis select gts.getTD(gti).jec(j)
                select makeJECGTT(j, jecgtA)).ToArray()));
        }
        #endregion map elements

        #region merge
        internal void mergeJECGT(JI j, JECGT jecFrom, JECGT jecTo,
            Action<GTI> enqueuePropagateGTI,
            Action<GTI, GTI> enqueueMergeGTI,
            Action<GTTI> enqueuePropagateGTTI,
            Action<GTTI, GTTI> enqueueMergeGTTI
            )
        {
            #region consistency
#if DEBUG
            Debug.Assert(jecFrom.index > jecTo.index);
#endif
            #endregion consistency
            gts.mergeJECInt(j, jecFrom, jecTo, enqueuePropagateGTI, enqueueMergeGTI);
            foreach (var sJECGTT in new HashSet<JECGTT>(from ti in jecFrom.tis from sgtti in gts.getTD(ti).sgttis select gtts.getTD(sgtti).jec(j)))
                remapJECGTT(j, sJECGTT, jecFrom, jecTo, enqueuePropagateGTTI, enqueueMergeGTTI);
        }
        private void remapJECGTT(JI j, JECGTT sJECGTT, JECGT jecFrom, JECGT jecTo,
            Action<GTTI> enqueuePropagateGTTI,
            Action<GTTI, GTTI> enqueueMergeGTTI)
        {
            if (!sJECGTT.jecgtT.Contains(jecFrom))
                return;
#if DEBUG
            if (jecgtTBreakCondition(j, sJECGTT.jecgtT))
                Debugger.Break();
#endif
            var oldKey = makeJECGTTKey(j, sJECGTT.jecgtT);
            var newECIs = (from jecGT in sJECGTT.jecgtT select (jecGT == jecFrom) ? jecTo : jecGT).ToArray();
            var newKey = makeJECGTTKey(j, newECIs);
#if DEBUG
            if (jecgtTBreakCondition(j, newECIs))
                Debugger.Break();
#endif
#if DEBUG
            if (jecgtTBreakCondition(j, sJECGTT.jecgtT))
                Debugger.Break();
#endif
            Debug.Assert(oldKey != newKey);
            sJECGTT.updateJECGTA(newECIs);
            Debug.Assert(!jecTKeyToJECGTT[j].ContainsKey(oldKey) || jecTKeyToJECGTT[j][oldKey] == sJECGTT);
            removeJECTKeyInt(j, oldKey);
            Debug.Assert(!jecTKeyToJECGTT[j].ContainsKey(oldKey));
            JECGTT oJECGTT;
            if (jecTKeyToJECGTT[j].TryGetValue(newKey, out oJECGTT))
                mergeJECGTT(j, newKey, oJECGTT, sJECGTT, enqueuePropagateGTTI, enqueueMergeGTTI);
            else
            {
                Debug.Assert(!jecTKeyToJECGTT[j].ContainsKey(newKey));
                setJECTKeyInt(j, newKey, sJECGTT);
                completeJECGTTJGTTs(j, sJECGTT);
                foreach (var gtti in sJECGTT.tis)
                    if (gtts.getTD(gtti).isAnyUpdated)
                        enqueuePropagateGTTI(gtti);

            }
        }

        public JECGTT mapNewJECGTT(JI j, JECGT[] jecgts)
        {
            var jec = makeNewJECGTT(j, jecgts);
            completeJECGTTJGTTs(j, jec);
            return jec;
        }
        private void completeJECGTTJGTTs(JI j, JECGTT jec)
        {
            var jgtts = ju.makeJGTTs(j, from jecgtt in jec.jecgtT select new HashSet<GT>(from cjgt in jecgtt.jts select pus[j].transitiveMerge(cjgt)));
            foreach (var jgtt in jgtts)
            {
                if (gtts.hasJT(j, jgtt))
                { }// Debug.Assert(gtts.getJTJEC(j, jgtt) == jec);
                else
                {
                    gtts.mapNewJTToJECInt(j, jgtt, jec);//JSourceStructure.completeJECGTTJGTTs
                }
            }
        }

        private IDictionary<JECAKey, JECGTT>[] jecTKeyToJECGTT;
        internal void mergeJECGTT(JI j, JECAKey key, JECGTT jecFrom, JECGTT jecTo,
            Action<GTTI> enqueuePropagateGTTI,
            Action<GTTI, GTTI> enqueueMergeGTTI)
        {
            Debug.Assert(jecFrom != jecTo);
            Debug.Assert(jecFrom.jecgtT.SequenceEqual(jecTo.jecgtT));
            Debug.Assert(makeJECGTTKey(j, jecTo.jecgtT) == key);
            if (jecFrom.CompareTo(jecTo) < 0)
                FU.swap(ref jecFrom, ref jecTo);
            gtts.mergeJECInt(j, jecFrom, jecTo, enqueuePropagateGTTI, enqueueMergeGTTI);
#if DEBUG
            if (jecgtTBreakCondition(j, jecTo.jecgtT))
                Debugger.Break();
            if (jecgtTBreakCondition(j, jecFrom.jecgtT))
                Debugger.Break();
#endif
            Debug.Assert(jecTKeyToJECGTT[j][key] == jecFrom || jecTKeyToJECGTT[j][key] == jecTo);
            if (jecTKeyToJECGTT[j][key] == jecFrom)
            {
                removeJECTKeyInt(j, key);
                setJECTKeyInt(j, key, jecTo);
            }
        }
        #endregion merge

        #region members
        public override IUNG gu { get { return ju; } }
        private readonly JU ju;
        public int jn { get { return ju.jn; } }
        public int[] js { get { return ju.js; } }
        public Universe[] pus;
        #endregion members

        #region garbage
        public override void removeGTTDInt(JGTTSD gttd)
        {
            foreach (var j in js)
                if (gttd.jecA[j].tis.Count==1)
                {
                    Debug.Assert(gttd.jecA[j].tis.First() == gttd.ti);
                    removeJECTKeyInt(j, makeJECGTTKey(j,gttd.jecA[j].jecgtT));
                }
            base.removeGTTDInt(gttd);
        }
        internal override void cutCrap()
        {
            foreach (var gtd in gts.allTDs)
            {
                foreach (var j in js)
                {
                    var pu = pus[j];
                    foreach (var jgt in gtd.jgts(j))
                        if (!pus[j].gtData.ContainsKey(jgt))
                            foreach (var jgfa in jgt.gfas)
                                Debug.Assert(!pu.hasGTT(jgfa.gtt) || pu.hasRGFA(jgfa.function, jgfa.gtt));
                }
                gts.removeCrapSources(gtd.ti, (j, jgt) => pus[j].hasGT(jgt));//,(j,jgt,jec)=> { });
            }
            foreach (var gttd in gtts.allTDs)
            {
                foreach (var j in js)
                {
                    var pu = pus[j];
                    foreach (var jgtt in gttd.jgtts(j))
                        if (!pu.gttData.ContainsKey(jgtt))
                            Debug.Assert(jgtt.gtT.Any(jgt => !pu.hasGT(jgt) || pu.hasRGTT(jgtt)));
                }
                gtts.removeCrapSources(
                    gttd.gtti,
                    (j, jgtt) => pus[j].hasGTT(jgtt));
//                ,                    (j, jgtt,jecgtt) => { if (jecgtt.jts.Count()==1 && jecgtt.removeJECTKeyInt(j, makeJECGTTKey(j, jgtt); });
            }

        }
        internal override IEnumerable<GT> getAllPGTs(int i) { return gts.getAllJTs(i); }
        internal override IEnumerable<GT> getGTIPGTs(int i, GTI gti) { return gts.getTD(gti).jgts(i); }
        internal override IEnumerable<GTT> getAllPGTTs(int i) { return gtts.getAllJTs(i); }
        internal override IEnumerable<GTT> getGTTIPGTTs(int i, GTTI gtti) { return gtts.getTD(gtti).jgtts(i); }

        protected override sealed void propagateUsed(JGTSD gtd, ISet<JGTSD> todoGTDs, ISet<JGTSD> usedGTDs, ISet<JGTTSD> todoGTTDs, ISet<JGTTSD> usedGTTDs)
        {
            if (gtd.depth != topDepth && gtd.depth > minDepth)
                if (jn == 1)
                {
                    foreach (var pgt in gtd.jgts(0))
                        foreach (var pgfa in pgt.gfas)
                            if (ju.inScope(pgfa.function))
                            {
                                var gttds = from gtti in gtts.getJTJEC(0, pgfa.gtt).tis select gtts.getTD(gtti);
                                foreach (var gttd in gttds)
                                    if (usedGTTDs.Add(gttd))
                                        todoGTTDs.Add(gttd);
                            }
                }
                else
                {
                    Debug.Assert(jn == 2);
                    #region jgtxjgt
                    var jgtA = (from j in js select gtd.jgts(j)).ToArray();
                    var jfA = (from j in js select new HashSet<Function>(from jgt in jgtA[j] from f in jgt.gfasByFunction.Keys select f)).ToArray();
                    foreach (var f in FU.intersection(jfA))
                        foreach (var jecgttT in
                            FU.makeOptions(
                                (from j in js
                                 select new HashSet<JECGTT>(
                       from jgt in jgtA[j] from jgfa in jgt.getGFAsByFunction(f) select gtts.getJTJEC(j, jgfa.gtt))).ToArray()))
                        {
                            var gttd = gtts.getJECATD(jecgttT);
                            if (usedGTTDs.Add(gttd))
                                todoGTTDs.Add(gttd);
                        }
                    #endregion jgtxjgt
                    #region jgtxgfa + gfaxjgt
                    foreach (var j in js)
                        foreach (var f in jfA[j])
                            if (gtd.hasGFAFunction(f))
                                foreach (var jecgttT in
                                    FU.makeOptions(
                                        (from j2 in js
                                         select j == j2
                                         ? new HashSet<JECGTT>(from jgt in jgtA[j2] from jgfa in jgt.getGFAsByFunction(f) select gtts.getJTJEC(j2, jgfa.gtt))
                                         : new HashSet<JECGTT>(from gtti in gtd.getGFAs(f) select gtts.getTD(gtti).jecA[j2])
                                         ).ToArray()))
                                {
                                    var gttd = gtts.getJECATD(jecgttT);
                                    if (usedGTTDs.Add(gttd))
                                        todoGTTDs.Add(gttd);
                                }
                    #endregion jgtxgfa + gfaxjgt
                }
            base.propagateUsed(gtd, todoGTDs, usedGTDs, todoGTTDs, usedGTTDs);
        }
        #endregion garbage

        #region dead joinee
        public void joineeDied(
            Action<GTI, GTI> enqueueMergeGTI,
            Action<GTTI, GTTI> enqueueMergeGTTI,
            Action<GTTI> enqueuePropagateGTTI)
        {
            Debug.Assert(pus.Length == 2);
            Debug.Assert(ju.pus.Length == 1);
            var lj = pus[0].isRefuted ? 1 : 0;
            gts.joineeDied(lj, enqueueMergeGTI);
            gtts.joineeDied(lj, enqueueMergeGTTI);
            pus = ju.pus;
            Debug.Assert(pus.Length == 1);
            jecTKeyToJECGTT = new[] { jecTKeyToJECGTT[lj] };
        }
        #endregion dead joinee

        #region consistency
        public override bool sourcesCompleteGTINoLGTs(int gti)
        {
            base.sourcesCompleteGTINoLGTs(gti);
            var gtd = gts.getTD(gti);

            #region gfas
            foreach (var gfa in gtd.gfas)
                foreach (var j in js)
                {
                    var pu = pus[j];
                    if (pu.inScope(gfa.Item1))
                    {
                        var f = gfa.Item1;
                        var gtti = gfa.Item2;
                        var gttd = gtts.getTD(gtti);
                        foreach (var pgtt in gttd.jgtts(j))
                            if (pu.inDepthBoundStrict(pgtt))
                            {
                                GFA pgfa;
                                if (pu.tryGetGFA(f, pgtt, out pgfa))
                                    Debug.Assert(gtd.hasJGT(j, pgfa.gt) || pu.gtRevision(pgfa.gt) >= ju.predecessorLastRevisions[j]);
                                else
                                    Debug.Assert(pu.hasRGFA(f, pgtt));
                            }
                    }
                }
            #endregion gfas

            #region pgts
            foreach (var j in js)
                foreach (var jgt in gtd.jgts(j))
                    Debug.Assert(pus[j].upToDate(jgt));
            if (gtd.depth > minDepth)
            {
                var gfaMap = new Dictionary<Function, ISet<GTT>[]>();
                foreach (var j in js)
                    foreach (var pgt in gtd.jgts(j))
                        foreach (var pgfa in pgt.gfas)
                            if (ju.inScope(pgfa.function))
                                gfaMap.insert(jn, pgfa.function, j, pgfa.gtt);
                foreach (var kv in gfaMap)
                    foreach (var jgttA in FU.makeOptions((from j in js select kv.Value[j]).ToArray()))
                        Debug.Assert(gtd.hasGFA(kv.Key, getJGTTAGTTI(jgttA)));
            }
            #endregion pgts
            return true;
        }
        public override bool sourcesCompleteGTTINoLGTTs(int gtti)
        {
            base.sourcesCompleteGTTINoLGTTs(gtti);
            var gttd = gtts.getTD(gtti);
            #region gtiT
            if (gttd.gtiT.Length > 0)
            {
                #region gtis
                foreach (var j in js)
                {
                    var pu = pus[j];
                    foreach (var pgtA in FU.makeOptions((from gti in gttd.gtiT select pu.depthFilterStrict(from pgt in gts.getTD(gti).jgts(j) select pgt)).ToArray()))
                    {
                        GTT pgtt;
                        if (ju.termRepository.tryGetGTT(pgtA, out pgtt))
                            if (pu.hasGTT(pgtt))
                            {
                                Debug.Assert(pu.upToDate(pgtt));
                                Debug.Assert(gttd.hasJGTT(j, pgtt) || pu.gttRevision(pgtt) >= ju.predecessorLastRevisions[j]);
                            }
                            else
                                Debug.Assert(pu.hasRGTT(pgtt));
                        else
                            Debug.Assert(false);
                    }

                }
                #endregion gtis
            }
            #endregion gtiT

            #region jgtts
            foreach (var j in js)
                foreach (var jgtt in gttd.jgtts(j))
                    Debug.Assert(pus[j].upToDate(jgtt));
            #endregion jgtts

            var jgttsA = (from j in js select new HashSet<GTT>(gtts.getJTs(j, gtti))).ToArray();

            #region empty gtt
            if (getGTTIGTIs(gtti).Count == 0)
                foreach (var j in js)
                    Debug.Assert(jgttsA[j].Count == 1 && jgttsA[j].Contains(ju.emptyGTT));
            #endregion empty gtt

            #region sources
            if (ju.jn == 2)
            {
                foreach (var j in js)
                {
                    var ju = this.ju.pus[j];
                    if (getGTTIGTIs(gtti).Count > 0)
                    {
                        var jgtsA = ju.depthFilterStrict(from gt in getGTTIGTIs(gtti) select gts.getJTs(j, gt));
                        var pjgtts = from jgtA in FU.makeOptions(jgtsA) select ju.getGTT(jgtA);
                        foreach (var pjgtt in pjgtts)
                            if (!ju.hasGTT(pjgtt))
                                Debug.Assert(ju.hasRGTT(pjgtt));
                            else
                                if (this.ju.predecessorLastRevisions[j] > ju.gttRevision(pjgtt))
                                Debug.Assert(jgttsA[j].Contains(pjgtt));
                    }
                }
            }
            #endregion sources
            return true;
        }

        private GTTI getJGTTAGTTI(GTT[] jgttA)
        {
            return gtts.getJECATD((from j in js select gtts.getJTJEC(j, jgttA[j])).ToArray()).gtti;
        }

        #endregion consistency
    }
}

