using Slicer.Analyzers.FOLConverter.Formulae;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    #region queues
    public class SaturationQueues
    {
        public SaturationQueues(Universe universe)
        {
            this.universe = universe;
        }

        public bool has(GC gc)
        {
            return pUnsaturatedGCs.Contains(gc);
        }
        public bool has(GT gt)
        {
            return pUnsaturatedGTs.Contains(gt);
        }
        public bool has(FC fc)
        {
            return pUnsaturatedFCs.Contains(fc);
        }
        public void remove(GT gt)
        {
            #region DEBUG
#if DEBUG
            if (Universe.gtInstBreakCond(universe, gt))
                Debugger.Break();
#endif
            #endregion DEBUG
            pUnsaturatedGTs.Remove(gt);
        }
        public void remove(GC gc)
        {
            pUnsaturatedGCs.Remove(gc);
        }
        public void remove(FC c)
        {
            pUnsaturatedFCs.Remove(c);
        }
        public void remove(GL gl)
        {
            pUnsaturatedGLs.Remove(gl);
        }
        public void removeGDE(GT gt0,GT gt1)
        {
            disequalityMap.remove(gt0,gt1);
            disequalityMap.remove(gt1,gt0);
        }
        public void removeGEQ(GT gt)
        {
            int i;
            if (!equivalenceClassMap.TryGetValue(gt,out i))
                return;
            equivalenceClassMap.Remove(gt);
            var s = equivalenceClasses[i];
            s.Remove(gt);
            Debug.Assert(s.Any());
            if (s.Count == 1)
            {
                equivalenceClasses.Remove(i);
                equivalenceClassMap.Remove(s.First());
            }
        }

        #region enqueue
        public void enqueue(GL gl)
        {
            if (universe.isInstSat(gl))
                return;
            pUnsaturatedGLs.Add(gl);
        }
        public void enqueue(GT gt)
        {
#if DEBUG
            if (Universe.gtInstBreakCond(universe, gt))
                Debugger.Break();
#endif
            if (universe.isInstSat(gt))
                return;
            pUnsaturatedGTs.Add(gt);
        }
        public void enqueue(GC gc)
        {
            Debug.Assert(universe.isAssumed(gc));
            if (universe.isInstSat(gc))
                return;
            pUnsaturatedGCs.Add(gc);
        }
        public void enqueue(FC fc)
        {
            Debug.Assert(universe.isAssumed(fc));
            if (universe.isInstSat(fc))
                return;
            pUnsaturatedFCs.Add(fc);
        }
        public void enqueueInequality(GT gt0, GT gt1)
        {
            Debug.Assert(universe.upToDateGTMM(gt0));
            Debug.Assert(universe.upToDateGTMM(gt1));
            Debug.Assert(gt0 != gt1);
            Debug.Assert(universe.gtData[gt0].disequalities.Contains(gt1));
            disequalityMap.insert(gt0, gt1);
            disequalityMap.insert(gt1, gt0);
        }
        public void enqueueEquivalenceClass(GT gt0, GT gt1)
        {
#if DEBUG
            /*            if ((gt0.ToString() == @"0" && gt1.ToString().Contains(@"2147483648")) || 
                            (gt1.ToString() == @"0" && gt0.ToString().Contains(@"2147483648")))
                            Debugger.Break();
                        if ((gt1.gfas.Any(gfa=>gfa.ToString().Contains(@"2147483648"))) || 
                            (gt0.gfas.Any(gfa=>gfa.ToString().Contains(@"2147483648"))))
                            Debugger.Break();
                        if (universe.isNumber(gt0) && universe.isNumber(gt1))
                            Debugger.Break();*/
//            if (gt0.index == 1527 || gt1.index == 1527 || gt0.index == 661 || gt1.index == 661)
//                Debugger.Break();

#endif
            enqueueEquivalenceClass(new[] { gt0, gt1 });
        }
        public void enqueueEquivalenceClass(IEnumerable<GT> ogts)
        {
#region precondition
#if DEBUG
            foreach (var ogt in ogts)
                Debug.Assert(universe.upToDateGTMM(ogt));
#endif
#endregion precondition
            var gts = new HashSet<GT>(ogts);
            if (gts.Count() < 2)
                return;
            //                if (gts.All(gt1 => gt1 == gts.First()))
            //                   return;
            var indices = new HashSet<int>();
            foreach (var gt in gts)
            {
                int i;
                if (equivalenceClassMap.TryGetValue(gt, out i))
                    indices.Add(i);
            }
            int index;
            if (indices.Any())
            {
                index = indices.Min();
                foreach (var i in indices)
                    if (i != index)
                    {
                        equivalenceClasses[index].UnionWith(equivalenceClasses[i]);
                        equivalenceClasses.Remove(i);
                    }
            }
            else
            {
                index = lastEquivalenceClassIndex;
                lastEquivalenceClassIndex++;
                equivalenceClasses[index] = new HashSet<GT>();
            }
            equivalenceClasses[index].UnionWith(gts);
            foreach (var gt in equivalenceClasses[index])
                equivalenceClassMap[gt] = index;
        }
#endregion enqueue

#region GT queries
        public IEnumerable<ISet<GT>> getEquivalenceClasses()
        {
            var result = equivalenceClasses.Values.ToList();
            equivalenceClasses.Clear();
            equivalenceClassMap.Clear();
            return result;
        }
        public bool hasEquivalenceClasses { get { return equivalenceClasses.Any(); } }
        public bool areEqual(GT gt0,GT gt1)
        {
            Debug.Assert(gt0!=gt1);
            int gtec0, gtec1;
            return equivalenceClassMap.TryGetValue(gt0, out gtec0) && equivalenceClassMap.TryGetValue(gt1, out gtec1) && gtec0 == gtec1;
        }
        public bool hasEquivalenceClass(GT gt)
        {
            return equivalenceClassMap.ContainsKey(gt);
        }
        public bool hasInequalityClasses { get { return disequalityMap.Any(); } }
        public bool areUnequal(GT gt0, GT gt1)
        {
            Debug.Assert(gt0 != gt1);
            ISet<GT> s;
            return disequalityMap.TryGetValue(gt0, out s) && s.Contains(gt1);
        }
        public bool hasInequalityClass(GT gt)
        {
            return disequalityMap.ContainsKey(gt);
        }
        public IEnumerable<GT> equivalenceGTs { get { return equivalenceClassMap.Keys; } }
        public IEnumerable<GT> inEquivalenceGTs { get { return disequalityMap.Keys; } }
#endregion GT queries

        public IEnumerable<GT> unsaturatedGTs { get { return pUnsaturatedGTs; } }
        public IEnumerable<GL> unsaturatedGLs { get { return pUnsaturatedGLs; } }
        public IEnumerable<GC> unsaturatedGCs { get { return pUnsaturatedGCs; } }
        public IEnumerable<FC> unsaturatedFCs { get { return pUnsaturatedFCs; } }
        public IEnumerable<Tuple<GT,GT>> unsaturatedDisequalities { get { return from kv in disequalityMap from gt2 in kv.Value select new Tuple<GT,GT>(kv.Key,gt2); } }

        /*public bool tryGetInequality(out GT gt0, out GT gt1)
        {
            if (!inequalityMap.Any())
            {
                gt0 = null;
                gt1 = null;
                return false;
            }
            var kv = inequalityMap.First();
            gt0 = kv.Key;
            gt1 = kv.Value.First();
            removeInequality(gt0, gt1);
            return true;
        }*/
        /*private void removeInequality(GT gt0, GT gt1)
        {
            var s0 = inequalityMap[gt0];
            s0.Remove(gt1);
            if (!s0.Any())
                inequalityMap.Remove(gt0);
            var s1 = inequalityMap[gt1];
            s1.Remove(gt0);
            if (!s1.Any())
                inequalityMap.Remove(gt1);
        }*/
        /*        internal bool tryDequeue(out GC gc)
        {
            if (pUnsaturatedGCs.Any())
            {
                gc = pUnsaturatedGCs.First();
                pUnsaturatedGCs.Remove(gc);
                return true;
            }
            else
            {
                gc = null;
                return false;
            }
        }
        internal bool tryDequeue(out FC c)
        {
            if (pUnsaturatedFCs.Any())
            {
                c = pUnsaturatedFCs.First();
                pUnsaturatedFCs.Remove(c);
                return true;
            }
            else
            {
                c = null;
                return false;
            }
        }*/

        internal void updateECGT(IEnumerable<GT> mgts, GT gt)
        {
#region EC
            foreach (var mgt in mgts)
            {
                int ec;
                if (equivalenceClassMap.TryGetValue(mgt, out ec))
                {
                    equivalenceClassMap.Remove(mgt);
                    var s = equivalenceClasses[ec];
                    s.Remove(mgt);
                    s.Add(gt);
                    if (s.Count == 1)
                    {
                        equivalenceClasses.Remove(ec);
                        equivalenceClassMap.Remove(gt);
                    }
                    else
                    {
                        int ec2;
                        if (!equivalenceClassMap.TryGetValue(gt, out ec2))
                            equivalenceClassMap[gt] = ec;
                        else
                            if (ec != ec2)
                        {//merge
                            var s2 = equivalenceClasses[ec2];
                            s.UnionWith(s2);
                            foreach (var gt2 in s2)
                                equivalenceClassMap[gt2] = ec;
                            equivalenceClasses.Remove(ec2);
                        }
                    }
                }
            }
#endregion EC
        }
        internal void updateMapECs(IDictionary<GT, GT> localGTMergeMap, IDictionary<GTT, GTT> localGTTMergeMap)
        {
#region disequalities
            foreach (var ogt in disequalityMap.Keys.ToArray())
            {
                GT ngt;
                if (localGTMergeMap.TryGetValue(ogt, out ngt) && ogt != ngt)
                {
                    var des = disequalityMap[ogt];
                    disequalityMap.Remove(ogt);
                    ISet<GT> des2;
                    if (disequalityMap.TryGetValue(ngt, out des2))
                        des2.UnionWith(des);
                    else
                        disequalityMap[ngt] = des;
                    foreach (var ogt2 in des)
                    {
                        GT ngt2;
                        if (!localGTMergeMap.TryGetValue(ogt2, out ngt2))
                            ngt2 = ogt2;
                        if (ngt == ngt2)
                        {
                            universe.refute(ogt.ToStringB() + " is equal and unequal to " + ogt2.ToStringB());
                            return;
                        }
                        ISet<GT> s2;
                        if (!disequalityMap.TryGetValue(ogt2, out s2))
                            s2 = disequalityMap[ngt2];
                        Debug.Assert(s2.Contains(ogt));
                        s2.Remove(ogt);
                        s2.Add(ngt);
                    }
                }
            }
            Debug.Assert(mapsUpToDate);
#endregion disequalities
        }
        bool mapsUpToDate
        {
            get
            {
                foreach (var eqe in equivalenceClassMap)
                    Debug.Assert(universe.upToDate(eqe.Key));
                foreach (var nee in disequalityMap)
                {
                    Debug.Assert(universe.upToDate(nee.Key));
                    foreach (var gt2 in nee.Value)
                        Debug.Assert(universe.upToDate(gt2));
                }
                return true;
            }
        }
        internal void clear()
        {
            equivalenceClasses.Clear();
            equivalenceClassMap.Clear();
            disequalityMap.Clear();
            pUnsaturatedGCs.Clear();
            pUnsaturatedFCs.Clear();
            pUnsaturatedGTs.Clear();
        }

#region members
        private int lastEquivalenceClassIndex = 0;
        private readonly Universe universe;
#region GTs
        private readonly IDictionary<int, ISet<GT>> equivalenceClasses = new Dictionary<int, ISet<GT>>();
        private readonly IDictionary<GT, int> equivalenceClassMap = new Dictionary<GT, int>();
        private readonly IDictionary<GT, ISet<GT>> disequalityMap = new Dictionary<GT, ISet<GT>>();
#endregion GTs
#region clauses
        private readonly ISet<GT> pUnsaturatedGTs = new HashSet<GT>();
        private readonly ISet<GL> pUnsaturatedGLs = new HashSet<GL>();
        private readonly ISet<GC> pUnsaturatedGCs = new HashSet<GC>();
        private readonly ISet<FC> pUnsaturatedFCs = new HashSet<FC>();
#endregion clauses

        public bool Any { get { return AnyEq || AnyNonEq; } }
        public bool AnyNonEq { get { return pUnsaturatedGTs.Any() || pUnsaturatedFCs.Any() || pUnsaturatedGCs.Any() || pUnsaturatedGLs.Any() || disequalityMap.Any(); } }
        public bool AnyEq { get { return equivalenceClasses.Any(); } }

#endregion members

#region consistency
#if DEBUG
        public void checkECs()
        {
            foreach (var ec in equivalenceClasses.Values)
                foreach (var gt in ec)
                    Debug.Assert(universe.upToDateGTMM(gt));
            foreach (var nex in disequalityMap)
            {
                Debug.Assert(universe.upToDateGTMM(nex.Key));
                foreach (var ne2 in nex.Value)
                    Debug.Assert(universe.upToDateGTMM(ne2));
            }
        }
#endif
#endregion consistency

    }
#endregion queues
}
