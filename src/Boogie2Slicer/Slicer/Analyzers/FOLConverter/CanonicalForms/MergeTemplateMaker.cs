using Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Analyzers.FOLConverter;
using Slicer.StateSpace.Types;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    abstract class TemplateMaker<U,MT,GTS,GTTS,GFAS> where U : Universe where MT : Universe.EmbedTemplate
    {
        #region instance creation
        protected TemplateMaker(U universe)
        {
            this.universe = universe;
        }
        #endregion instance creation

        #region abstracts
        protected abstract LGTsAndPGTs getLGTLGTsAndPGTs(GroundTermEC lgt);
        protected abstract LGTsAndPGTs getPGTLGTsAndPGTs(GTS pgt);

        protected abstract LGTTsAndPGTTs getLGTTLGTTsAndPGTTs(GroundTupleEC lgtt);
        protected abstract LGTTsAndPGTTs getPGTTLGTTsAndPGTTs(GTTS pgtt);

        protected abstract IEnumerable<GTS> getPPGTs(IEnumerable<GTS> opgts, IEnumerable<GTS> npgts);

        protected abstract bool tryGetPGTLGTsAndPGTs(GTS pgt, out LGTsAndPGTs lgtsAndPgts);
        protected abstract bool tryGetPGTTLGTTsAndPGTTs(GTTS pgtt, out LGTTsAndPGTTs lgttsAndPgtts);
        protected abstract MT makeMT(U universe);
        protected abstract void setGTIPGTs(int gti,ISet<GTS> pgts);
        protected abstract void setGTTIPGTTs(int gtti, ISet<GTTS> pgtts); 
        protected abstract GTS getPGFAPGT(GFAS ppgfa);
        protected abstract GTTS getPGFAPGTT(GFAS ppgfa);
        protected abstract GTS getLocalPGFAPGT(GFAS ppgfa);
        protected abstract GTTS getLocalPGFAPGTT(GFAS ppgfa); 
        protected abstract GTS[] getPGTTPGTs(GTTS pgtt);
        protected abstract GTS[] getLocalPGTTPGTs(GTTS pgtt);
        protected abstract ITypeTuple getPGTTDataType(GTTS pgtt); 
        protected abstract IType getPGTType(GTS pgt); 
        protected abstract ISet<Function> getPGTMemberFunctions(GTS pgt); 
        protected abstract ISet<GFAS> getPGTMembers(GTS pgt, Function f); 
        protected abstract IDictionary<Function, GFAS> getPGTTIncomingPGFAsByFunction(GTTS pgtt); 
        protected abstract IEnumerable<GTTS> makePredecessorPGTTs(IEnumerable<GroundTupleEC> lgtts);
        protected abstract IEnumerable<GTTS> makePredecessorPGTTs(int gtti);
        protected abstract ISet<GTTSAndGTSs> getPGTSuperPGTTs(GTS pgt);
        protected abstract ISet<GTS> makePredecessorPGTs(Function f, IEnumerable<GTTS> pgtts, bool isGoal);
        protected abstract IEnumerable<int> getPGTPGFAGTTIs(GTS pgt, Function f);

        protected abstract void addExistingTermSources(GroundTermEC lgt, IEnumerable<GTS> pgts);
        protected abstract void addExistingTupleSources(GroundTupleEC lgtt, IEnumerable<GTTS> pgtts);
        #endregion abstracts

        #region utilities
        protected IEnumerable<IEnumerable<GTS>> getLGTTPotentialPGTAs(GroundTupleEC lgtt)
        {
            var pgtSets = (from lgt in lgtt.gTerms select gtis[getLGTGTI(lgt)].pgts).ToArray();
            return Universe.makeOptions(pgtSets);
        }

        internal class LGTsAndPGTs
        {
            public LGTsAndPGTs(IEnumerable<GroundTermEC> lgts, IEnumerable<GTS> pgts)
            {
                this.lgts = new HashSet<GroundTermEC>(lgts);
                this.pgts = new HashSet<GTS>(pgts);
            }
            public void unionWith(LGTsAndPGTs other)
            {
                lgts.UnionWith(other.lgts);
                pgts.UnionWith(other.pgts);
            }
            public readonly ISet<GroundTermEC> lgts;
            public readonly ISet<GTS> pgts;
        }
        internal class LGTTsAndPGTTs
        {
            public LGTTsAndPGTTs(IEnumerable<GroundTupleEC> lgtts, IEnumerable<GTTS> pgtts)
            {
                this.lgtts = new HashSet<GroundTupleEC>(lgtts);
                this.pgtts = new HashSet<GTTS>(pgtts);
            }
            public readonly ISet<GroundTupleEC> lgtts;
            public readonly ISet<GTTS> pgtts;
        }
        internal class GTTSAndGTSs
        {
            public GTTSAndGTSs(GTTS pgtt, IEnumerable<GTS> pgts)
            {
                this.pgtt = pgtt;
                this.pgts = pgts.ToArray();
            }

            public readonly GTTS pgtt;
            public readonly GTS[] pgts;

            public override int GetHashCode()
            {
                return pgtt.GetHashCode();
            }

        }
        protected LGTsAndPGTs getLGTsLGTsAndPGTs(IEnumerable<GroundTermEC> lgts)
        {
            Debug.Assert(lgts.Any());
            var laps = getLGTLGTsAndPGTs(lgts.First());
            foreach (var lgt in lgts.Skip(1))
                laps.unionWith(getLGTLGTsAndPGTs(lgt));
            return laps;
        }
        #endregion utilities

        #region main
        protected MT makeTemplate()//IEnumerable<ISet<GroundTermEC>> canonicalSets)
        {
            #region precondition
            Debug.Assert(universe.invariant());
            #endregion precondition

            #region propagate up
            while (todoUpGTIs.Any() || todoUpGTTIs.Any())
            {
                while (todoUpGTTIs.Any())
                {
                    var gtti = todoUpGTTIs.Dequeue();
                    if (!gttiNewInfo.ContainsKey(gtti))
                        continue;
                    var gttin = gttiNewInfo[gtti];
                    gttiNewInfo.Remove(gtti);
                    propagateUpGTTI(gtti, gttin.lgtts, gttin.pgtts);
                }
                while (todoUpGTIs.Any())
                {
                    var gti = todoUpGTIs.Dequeue();
                    if (mergedGTIs.Contains(gti))
                        continue;
                    var gtiNews = gtiNewInfo[gti];
                    gtiNewInfo.Remove(gti);

                    #region consistency
#if DEBUG
                    foreach (var gtii in gtis)
                        foreach (var gfa in gtii.Value.gfas)
                            foreach (var sgtti in gfa.Value)
                                Debug.Assert(gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                    #endregion consistency

                    var mgtis = mergeGTI(gti, gtiNews);
                    mergedGTIs.UnionWith(mgtis);
                    propagateUpGTI(gti, gtiNews);
                    if (!gtis[gti].isRim)
                        completeDownGTI(gti, gtiNews);

                    #region consistency
#if DEBUG
                    foreach (var gtii in gtis)
                        foreach (var gfa in gtii.Value.gfas)
                            foreach (var sgtti in gfa.Value)
                                Debug.Assert(gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                    #endregion consistency
                }
            }
            Debug.Assert(!gtiNewInfo.Any());
            Debug.Assert(!gttiNewInfo.Any());
            #endregion propagate up

            #region complete down pgt
            var todoDown = new Queue<int>();
            foreach (var gtii in gtis.Values)
                if (gtii.isRim && !gtii.lgts.Any())
                    todoDown.Enqueue(gtii.gti);
            Debug.Assert(!todoDown.Any());
            while (todoDown.Any())
            {
                var gti = todoDown.Dequeue();
                var gtii = gtis[gti];
                if (!gtii.isRim)
                    continue;
                gtii.removeFromRim();
                foreach (var gtti in gtii.superGTTIs)
                    gttis[gtti].isRim = false;
                foreach (var gfa in gtii.gfas)
                    foreach (var gtti in gfa.Value)
                        foreach (var sgti in gttis[gtti].gtis)
                            if (gtis[sgti].isRim && !gtis[sgti].lgts.Any())
                                todoDown.Enqueue(sgti);
            }
            #endregion complete down pgt

            #region consistency
#if DEBUG
            Debug.Assert(gttKeyToGTTIMap.Count == gttis.Count);
            foreach (var gttI in gttis.Values)
            {
                Debug.Assert(gttKeyToGTTIMap[makeGTTKey(gttI.gtis)] == gttI.gtti);
                if (gttI.isRim)
                    foreach (var gti in gttI.gtis)
                        Debug.Assert(gtis[gti].isRim);
            }
            foreach (var ogttKV in tupleKeyToOrphanPGTTMap)
            {
                var key = ogttKV.Key;
                Debug.Assert(!gttKeyToGTTIMap.ContainsKey(key));
                var ogtt = ogttKV.Value;
            }
            foreach (var gtii in gtis.Values)
            {
                Debug.Assert(gtis[gtii.gti] == gtii);
                Debug.Assert(gtii.lgts.Count == 1 || gtii.gfas.Any());
                Debug.Assert(gtii.pgts.Any() || gtii.lgts.Any());
                foreach (var gfa in gtii.gfas)
                    foreach (var gtti in gfa.Value)
                    {
                        var gttii = gttis[gtti];
                        Debug.Assert(gttii.incomingGTIsByFunction[gfa.Key] == gtii.gti);
                    }
                foreach (var sgtti in gtii.superGTTIs)
                    Debug.Assert(gttis[sgtti].gtis.Contains(gtii.gti));
                foreach (var lgt in gtii.lgts)
                    Debug.Assert(lgtToGTIMap[lgt] == gtii.gti);
                foreach (var pgt in gtii.pgts)
                    Debug.Assert(pgtToGTIMap[pgt] == gtii.gti);
            }
            foreach (var gttii in gttis.Values)
            {
                Debug.Assert(gttis[gttii.gtti] == gttii);
                Debug.Assert(gttii.pgtts.Any() || gttii.lgtts.Any());
                foreach (var gfa in gttii.incomingGTIsByFunction)
                    Debug.Assert(gtis[gfa.Value].gfas[gfa.Key].Contains(gttii.gtti));

                foreach (var gti in gttii.gtis)
                    Debug.Assert(gtis[gti].superGTTIs.Contains(gttii.gtti));
                foreach (var lgtt in gttii.lgtts)
                    Debug.Assert(lgttToGTTIMap[lgtt] == gttii.gtti);
                foreach (var pgtt in gttii.pgtts)
                    Debug.Assert(pgttToGTTIMap[pgtt] == gttii.gtti);
            }
#endif
            #endregion consistency

            #region trim to local
            var trimQueue = new Queue<int>();
            var removeGTIs = new HashSet<int>();
            var removeGTTIs = new HashSet<int>();
            foreach (var gtiI in gtis)
                if (gtiI.Value.lgts.Any() || gtiI.Value.pgts.Any(pgtsToKeep.Contains))
                    trimQueue.Enqueue(gtiI.Key);
                else
                    removeGTIs.Add(gtiI.Key);
            foreach (var gttiI in gttis)
                if (gttiI.Value.lgtts.Any() || gttiI.Value.pgtts.Any(pgttsToKeep.Contains))
                    foreach (var gti in gttiI.Value.gtis)
                    {
                        removeGTIs.Remove(gti);
                        trimQueue.Enqueue(gti);
                    }
                else
                    removeGTTIs.Add(gttiI.Key);

            while (trimQueue.Any())
            {
                var gti = trimQueue.Dequeue();
                Debug.Assert(!removeGTIs.Contains(gti));
                foreach (var gfa in gtis[gti].gfas)
                    foreach (var gtti in gfa.Value)
                        if (removeGTTIs.Remove(gtti))
                            foreach (var sgti in gttis[gtti].gtis)
                                if (removeGTIs.Remove(sgti))
                                    trimQueue.Enqueue(sgti);
            }
            foreach (var gti in removeGTIs)
            {
                foreach (var pgt in gtis[gti].pgts)
                    pgtToGTIMap.Remove(pgt);
                gtis.Remove(gti);
            }
            foreach (var gtti in removeGTTIs)
            {
                foreach (var pgtt in gttis[gtti].pgtts)
                    pgttToGTTIMap.Remove(pgtt);
                foreach (var gti in gttis[gtti].gtis)
                    if (gtis.ContainsKey(gti))
                        gtis[gti].superGTTIs.Remove(gtti);
                gttis.Remove(gtti);
            }
            #endregion trim to local
            
            #region trim existing
            var existingTerms = new HashSet<int>();
            var existingTuples = new HashSet<int>();
            if (lgttToGTTIMap.ContainsKey(universe.emptyTuple))
                existingTuples.Add(lgttToGTTIMap[universe.emptyTuple]);

            foreach (var gtiKV in gtis)
            {
                var gti = gtiKV.Key;
                var isExisting = gtiKV.Value.lgts.Count == 1 && !gtiKV.Value.gfas.Any();
                if (isExisting)
                    existingTerms.Add(gti);
            }
            var todoExisting = new Queue<int>(existingTerms);

            while (todoExisting.Any())
            {
                var gti = todoExisting.Dequeue();

                foreach (var sgttis in gtis[gti].gfas.Values)
                    foreach (var sgtti in sgttis)
                        if (gttis[sgtti].incomingGTIsByFunction.Values.All(existingTerms.Contains) && gttis[sgtti].gtis.All(existingTerms.Contains))
                        {
                            Debug.Assert(gttis[sgtti].lgtts.Count == 1);
                            Debug.Assert(gttis[sgtti].gtis.All(existingTerms.Contains));
                            gttis.Remove(sgtti);
                        }

                var remove = true;
                foreach (var gtti in gtis[gti].superGTTIs)
                    if (!existingTuples.Contains(gtti))
                        if (gttis[gtti].gtis.All(existingTerms.Contains) && gttis[gtti].lgtts.Count == 1 && gttis[gtti].isRim)
                        {
                            existingTuples.Add(gtti);
                            var sgtis = gttis[gtti].incomingGTIsByFunction.Values.ToArray();
                            foreach (var sgti in sgtis)
                                if (
                                    !existingTerms.Contains(sgti) && 
                                    gtis[sgti].lgts.Count == 1 && 
                                    gtis[sgti].gfas.Values.All(argis => argis.All(existingTuples.Contains))
/*                                    gtis[sgti].pgts.All(
                                        pgt => getPGTMemberFunctions(pgt).All(
                                            f => getPGTMembers(pgt, f).All(
                                                pgfa 
                                                    =>
                                                gtis[sgti].lgts.First().membersByFunction.ContainsKey(f) 
                                                    && 
                                                gtis[sgti].lgts.First().membersByFunction[f].Keys.Any(
                                                    lgtt
                                                        =>
                                                    (lgttToGTTIMap.ContainsKey(lgtt) && gttis[lgttToGTTIMap[lgtt]].pgtts.Contains(getPGFAPGTT(pgfa)))
                                                        ||
                                                    (universe.groundTu
                                            )
                                        )
                                    )*/ 
                                )
                            
                                {
                                    existingTerms.Add(sgti);
                                    foreach (var gfa in gtis[sgti].gfas)
                                        foreach (var sgtti in gfa.Value)
                                            gttis[sgtti].incomingGTIsByFunction.Remove(gfa.Key);
                                    gtis[sgti].gfas.Clear();
                                    todoExisting.Enqueue(sgti);
                                }
                        }
                        else
                            remove = false;

                if (remove)
                    gtis.Remove(gti);
            }
            #endregion trim existing

            #region build template
            eTemplate = makeMT(universe);

            foreach (var gtiKV in gtis)
            {
                var gti = gtiKV.Key;
                if (existingTerms.Contains(gti))
                {
                    var lgt = gtiKV.Value.lgts.First();
                    eTemplate.template.addExistingTerm(gti, lgt);
                    addExistingTermSources(lgt, gtiKV.Value.pgts);
                }
                else
                {
                    eTemplate.template.addNewTerm(gti, new Tuple<Function, int>[0]);
                    eTemplate.groundTermMergees[gti] = gtiKV.Value.lgts;
                    setGTIPGTs(gti, gtiKV.Value.pgts); //eTemplate.groundTermSources[gti] = gtiKV.Value.pgts;
                }
            }
            foreach (var gttiKV in gttis)
            {
                var gtti = gttiKV.Key;
                var isExisting = gttiKV.Value.lgtts.Count == 1 && gttiKV.Value.gtis.All(existingTerms.Contains) && gttis[gtti].isRim;
                if (isExisting)
                {
                    var lgtt = gttiKV.Value.lgtts.First();
                    eTemplate.template.addExistingTuple(gtti, lgtt);
                    addExistingTupleSources(lgtt, gttiKV.Value.pgtts);
                }
                else
                {
                    eTemplate.template.addNewTuple(gtti, gttiKV.Value.gtis);
                    eTemplate.groundTupleMergees[gtti] = gttiKV.Value.lgtts;
                    setGTTIPGTTs(gtti, gttiKV.Value.pgtts);
                }
            }
            foreach (var gtiKV in gtis)
                if (!existingTerms.Contains(gtiKV.Key))
                {
                    var gti = gtiKV.Key;
                    foreach (var gfa in gtiKV.Value.gfas)
                        foreach (var gtti in gfa.Value)
                            eTemplate.template.addFunctionApplication(gti, gfa.Key, gtti);
                }
            Debug.Assert(!eTemplate.template.congruenceClosureTodoSets.Any());
            eTemplate.template.check();
            #endregion build template

            eTemplate.checkSources();

            return eTemplate;
        }
        #endregion main

        #region merge
        private ISet<int> mergeGTI(int gti, GTINews gtiNews)
        {
            var mgtis = getAndCleanMergees(gti, gtiNews);
            foreach (var mgti in mgtis)
                mergeGTIIntoGTI(gti, mgti, gtiNews);
            gtiNews.mpgts.ExceptWith(gtiNews.npgts);
            return mgtis;
        }
        private ISet<int> getAndCleanMergees(int gti, GTINews gtiNews)
        {
            var rimPGTs = new HashSet<GTS>();
            var hasNonRim = !gtis[gti].isRim;
            var result = new HashSet<int>();
            var todo = new Queue<int>();
            foreach (var mgti in gtiNews.newGTIs)
                todo.Enqueue(mgti);
            while (todo.Any())
            {
                var mGTI = todo.Dequeue();
                hasNonRim |= !gtis[mGTI].isRim;
                result.Add(mGTI);
                GTINews mGTINews;
                if (gtiNewInfo.TryGetValue(mGTI, out mGTINews))
                {
                    foreach (var mmGTI in mGTINews.newGTIs)
                    {
                        Debug.Assert(mmGTI != gti);
                        Debug.Assert(mmGTI != mGTI);
                        Debug.Assert(!result.Contains(mmGTI));
                        result.Add(mmGTI);
                        todo.Enqueue(mmGTI);
                    }
                    gtiNews.npgts.UnionWith(mGTINews.npgts);
                    gtiNews.nlgts.UnionWith(mGTINews.nlgts);
                    gtiNewInfo.Remove(mGTI);
                    if (gtis[mGTI].isRim)
                        rimPGTs.UnionWith(mGTINews.npgts);
                }
            }
            if (hasNonRim)
                gtiNews.npgts.UnionWith(rimPGTs);
            return result;
        }
        private void mergeGTIIntoGTI(int gti, int mgti, GTINews gtiNews)
        {
            Debug.Assert(gti != mgti);
            var gtiInfo = gtis[gti];
            var mGTIInfo = gtis[mgti];
            gtis.Remove(mgti);

            gtiNews.mpgts.UnionWith(mGTIInfo.pgts);
            gtiInfo.merge(mGTIInfo);
            enqueueUpGTI(gti, gtiInfo.lgts, new GTS[0]);
        }

        internal int remapGTTI(int mgtti, int gti, int mgti)
        {
            var mGTTIInfo = gttis[mgtti];
#if DEBUG
            Debug.Assert(gttKeyToGTTIMap.Count == gttis.Count);
            Debug.Assert(mGTTIInfo.gtis.Any(gti1 => gti1 == mgti));
            var ogfas = (from gfa in mGTTIInfo.incomingGTIsByFunction select gfa).ToArray();
#endif

            var oldGTIs = mGTTIInfo.gtis;
            var newGTIs = (from ogti in oldGTIs select ogti == mgti ? gti : ogti).ToArray();
            var oldKey = makeGTTKey(oldGTIs);
            //            tupleKeyToGTTIMap.Remove(oldKey);
            for (var i = 0; i < newGTIs.Length; i++)
                mGTTIInfo.gtis[i] = newGTIs[i];
            var newKey = makeGTTKey(newGTIs);
            int gtti;
            if (gttKeyToGTTIMap.TryGetValue(newKey, out gtti))
            {
#if DEBUG
                Debug.Assert(gtti != mgtti);
                foreach (var gtii in gtis)
                    foreach (var gfa in gtii.Value.gfas)
                        foreach (var sgtti in gfa.Value)
                            Debug.Assert(gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                mergeGTTIInto(gtti, mgtti);
                gttis.Remove(mgtti);
#if DEBUG
                Debug.Assert(gttKeyToGTTIMap[oldKey] == mgtti);
                /*                foreach (var ogfa in ogfas)
                                {
                                    Debug.Assert(!gtis[ogfa.Value].gfas[ogfa.Key].Contains(mgtti));
                                    Debug.Assert(gtis[ogfa.Value].gfas[ogfa.Key].Contains(gtti));
                                }*/
                foreach (var gtii in gtis)
                    foreach (var gfa in gtii.Value.gfas)
                        foreach (var sgtti in gfa.Value)
                            Debug.Assert(gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                gttKeyToGTTIMap.Remove(oldKey);
                Debug.Assert(gttKeyToGTTIMap.Count == gttis.Count);
            }
            else
            {
                Debug.Assert(newKey != oldKey);
                gtti = remapGTTI(newGTIs, newKey, mgtti);
                gttKeyToGTTIMap.Remove(oldKey);// makeTupleKey(mGTTIInfo.gtis));
                Debug.Assert(gttKeyToGTTIMap.Count == gttis.Count);
            }
#if DEBUG
            foreach (var sgti in gttis[gtti].gtis)
                Debug.Assert(gtis[sgti].gti != mgti);
#endif
            return gtti;
        }
        private int remapGTTI(int[] gtis, string key, int mgtti)
        {//assumes one gti is modified, and its super tuples are up to date
            var gttiInfo = gttis[mgtti];
            Debug.Assert(!gttKeyToGTTIMap.ContainsKey(key));
            gttKeyToGTTIMap[key] = mgtti;
            for (var i = 0; i < gttiInfo.gtis.Length; i++)
                gttiInfo.gtis[i] = gtis[i];
            ISet<GTTS> oPGTTs;
            if (tupleKeyToOrphanPGTTMap.TryGetValue(key, out oPGTTs))
            {
//                tupleKeyToOrphanPGTTMap.Remove(key);
                mapOrphanPGTTs(mgtti, oPGTTs);
            }
            return mgtti;
        }
        Dictionary<int, int> gttiMergeMap = new Dictionary<int, int>();
        private void mergeGTTIInto(int gtti, int mgtti)
        {
            gttiMergeMap[mgtti] = gtti;
            var gttiInfo = gttis[gtti];
            var mgttiInfo = gttis[mgtti];
            var mKey = makeGTTKey(mgttiInfo.gtis);

            gttiInfo.merge(mgttiInfo);
            GTTINews mgttin;
            if (gttiNewInfo.TryGetValue(mgtti, out mgttin))
            {
                enqueueUpGTTI(gtti, mgttin.lgtts,mgttin.pgtts);
                gttiNewInfo.Remove(mgtti);
            }
            foreach (var f in gttiCompletionFunctions(gtti))
            {
                var pgtts = gttis[gtti].pgtts;
                makePredecessorPGTs(f, pgtts, false);
            }

        }
        #endregion merge

        #region propagate
#if DEBUG
        private ISet<GTS> completedDownPGTs = new HashSet<GTS>();
#endif
        private void completeDownGTI(int gti, GTINews gtiNews)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!gtis[gti].isRim);
            Debug.Assert(gtis[gti].pgts.IsSupersetOf(gtiNews.npgts));
            Debug.Assert(gtis[gti].pgts.IsSupersetOf(gtiNews.mpgts));
            foreach (var pgt in gtis[gti].pgts.Except(gtiNews.npgts))
            {
                Debug.Assert(completedDownPGTs.Contains(pgt));
                Debug.Assert(pgtToGTIMap[pgt] == gti);
            }
            foreach (var npgt in gtiNews.npgts)
                Debug.Assert(!completedDownPGTs.Contains(npgt));
#endif
            #endregion precondition

            completeDownGTI(gti, gtiNews.npgts,gtiNews.mpgts);
        }

        private void completeDownGTI(int gti, IEnumerable<GTS> npgts, IEnumerable<GTS> mpgts)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!npgts.Any(completedDownPGTs.Contains));
            Debug.Assert(mpgts.All(completedDownPGTs.Contains));
            Debug.Assert(npgts.All(gtis[gti].pgts.Contains));
            Debug.Assert(mpgts.All(gtis[gti].pgts.Contains));
#endif
            #endregion precondition

            var toPropagateDownPPGTTs = new HashSet<GTTS>();
            foreach (var npgt in npgts)
                toPropagateDownPPGTTs.UnionWith(completeDownGTIPGT(gti,npgt));
            var opgts = new HashSet<GTS>(gtis[gti].pgts.Except(npgts));
            var mnpgts = new HashSet<GTS>(npgts.Union(mpgts));
            var oopgts = new HashSet<GTS>(opgts.Except(mnpgts));
            var ppgts = new HashSet<GTS>(getPPGTs(oopgts, mnpgts));
            ppgts.ExceptWith(gtis[gti].pgts);
            ppgts.ExceptWith(gtis[gti].potentialPGTs);
            foreach (var ppgt in ppgts)
                toPropagateDownPPGTTs.UnionWith(completeDownGTIPPGT(gti, ppgt));
            gtis[gti].potentialPGTs.UnionWith(ppgts);
            propagateDownPPGTTs(toPropagateDownPPGTTs);
            /*
            var npgtts = new HashSet<GTTS>();
            foreach (var npgt in npgts)
                foreach (var f in getPGTMemberFunctions(npgt))
                {
                    var pgfas = getPGTMembers(npgt, f);
                    var pgfaSets = new HashSet<GFAS>(pgfas);
                    ISet<GTTS> ppgtNewPPGTs;
                    result.UnionWith(makePPGTs(pgfaSets, out ppgtNewPPGTs));
                    npgtts.UnionWith(ppgtNewPPGTs);
                }
            gtis[gti].potentialPGTs.UnionWith(result);
            foreach (var ppgt in result)
            {
                ISet<int> e;
                if (!ppgtToGTIs.TryGetValue(ppgt, out e))
                    ppgtToGTIs[ppgt] = e = new HashSet<int>();
                e.Add(gti);
            }
            propagatePotentialPGTTs(npgtts);*/
        }

        private void propagateDownPPGTTs(ISet<GTTS> toPropagateDownPPGTTs)
        {
            #region precondition
            foreach (var ppgtt in toPropagateDownPPGTTs)
            {
                Debug.Assert(!pgttToGTTIMap.ContainsKey(ppgtt));
                Debug.Assert(!ppgttMissingTerms.ContainsKey(ppgtt));
                Debug.Assert(!orphanPGTTs.Contains(ppgtt));
            }
            #endregion precondition

            var enqueuedSet = new HashSet<GTTS>(toPropagateDownPPGTTs);

            var todoDown = new Queue<GTTS>();
            foreach (var ppgtt in toPropagateDownPPGTTs)
                todoDown.Enqueue(ppgtt);

            while (todoDown.Any())
            {
                var ppgtt = todoDown.Dequeue();
                enqueuedSet.Remove(ppgtt);
                if (pgttToGTTIMap.ContainsKey(ppgtt))
                    continue;
                Debug.Assert(!pgttToGTTIMap.ContainsKey(ppgtt));
                Debug.Assert(!ppgttMissingTerms.ContainsKey(ppgtt));
                Debug.Assert(!orphanPGTTs.Contains(ppgtt));
#if DEBUG
                LGTTsAndPGTTs dlaps;
                Debug.Assert(!tryGetPGTTLGTTsAndPGTTs(ppgtt, out dlaps));
#endif
                var ppgts = getLocalPGTTPGTs(ppgtt);
                ppgttMissingTerms[ppgtt] = new HashSet<int>();
                var numTerms = ppgts.Length;
                for (var i = 0; i < numTerms; i++)
                {
                    var ppgt = ppgts[i];
                    int gti;
                    LGTsAndPGTs laps;
                    if (!pgtToGTIMap.TryGetValue(ppgt, out gti))
                        if (orphanPGTs.Contains(ppgt))
                            gti = mapNewOrphanGTI(ppgt);
                        else if (tryGetPGTLGTsAndPGTs(ppgt, out laps))
                            gti = mapNewGTI(laps, true);
                        else
                        {
                            IDictionary<GTTS, ISet<int>> ppgttTerm;
                            if (!ppgtToPPGTTTerms.TryGetValue(ppgt, out ppgttTerm))
                            {
                                ISet<GTTS> ppgtts;
                                var foundPGFAs = completeDownPGT(ppgt, out ppgtts);
                                if (foundPGFAs.Any())
                                {
                                    gti = mapNewGTI(new GroundTermEC[0], new[] { ppgt },false);
                                    foreach (var pgfas in foundPGFAs)
                                        foreach (var sgtti in pgfas.Value)
                                            gtis[gti].mapGFA(pgfas.Key, sgtti);
                                    enqueueUpGTI(gti, new GroundTermEC[0], new[] { ppgt });
                                }
                                else
                                {
                                    ppgtToPPGTTTerms[ppgt] = ppgttTerm = new Dictionary<GTTS, ISet<int>>();
                                    Debug.Assert(!ppgtToGTIs.ContainsKey(ppgt));
                                    ppgtToGTIs[ppgt] = new HashSet<int>();
                                    addMapSet(ppgttTerm, ppgtt, i);
                                    ppgttMissingTerms[ppgtt].Add(i);
                                }

                                foreach (var ppgtt2 in ppgtts)
                                    if (enqueuedSet.Add(ppgtt2))
                                        todoDown.Enqueue(ppgtt2);
                            }
                            else
                            {
                                addMapSet(ppgttTerm, ppgtt, i);
                                ppgttMissingTerms[ppgtt].Add(i);
                            }
                        }
                    Debug.Assert(ppgttMissingTerms[ppgtt].Contains(i) ^ pgtToGTIMap.ContainsKey(ppgt));
                }
                if (!ppgttMissingTerms[ppgtt].Any())
                    ppgttFound(ppgtt,false);
            }//else of if (pgttToGTTIMap.TryGetValue(ppgtt, out gtti))

        }

        private ISet<GTTS> completeDownGTIPPGT(int gti, GTS ppgt)
        {
            var result = new HashSet<GTTS>();
            Debug.Assert(!pgtToGTIMap.ContainsKey(ppgt));
            if (!ppgtToPPGTTTerms.ContainsKey(ppgt) && !ppgtToGTIs.ContainsKey(ppgt))
            {
                if (orphanPGTs.Contains(ppgt))
                    mapOrphanPGTs(gti, new[] { ppgt });
                else
                {
                    result.UnionWith(completeDownGTIPGT(gti, ppgt));
                }
            }
            return result;
        }
        private ISet<GTTS> completeDownGTIPGT(int gti,GTS npgt)
        {
            ISet<GTTS> result;
            Debug.Assert(!orphanPGTs.Contains(npgt));
            Debug.Assert(!pgtToGTIMap.ContainsKey(npgt) || pgtToGTIMap[npgt] == gti);

            var foundPGFAs = completeDownPGT(npgt, out result);
            Debug.Assert(!pgtToGTIMap.ContainsKey(npgt) || foundPGFAs.Any());
            if (foundPGFAs.Any())
            {
                if (!pgtToGTIMap.ContainsKey(npgt))
                    gtis[gti].addPGT(npgt);
                foreach (var foundPGFA in foundPGFAs)
                {
                    var f = foundPGFA.Key;
                    foreach (var gtti in foundPGFA.Value)
                    {
                        int mgti;
                        if (gttis[gtti].incomingGTIsByFunction.TryGetValue(f, out mgti))
                        {
                            Debug.Assert(!gttis[gtti].orphanIncomingPGTsByFunction.ContainsKey(f));
                            if (mgti != gti)
                                enqueueMergeGTI(gti, mgti);
                            else
                                Debug.Assert(gtis[gti].gfas[f].Contains(gtti));
                        }
                        else
                        {
                            gtis[gti].mapGFA(f, gtti);
                        }
                    }
                }
            }
            else
            {
                ISet<int> pgtis;
                if (!ppgtToGTIs.TryGetValue(npgt, out pgtis))
                {
                    ppgtToGTIs[npgt] = pgtis = new HashSet<int>();
                    Debug.Assert(!ppgtToPPGTTTerms.ContainsKey(npgt));
                    ppgtToPPGTTTerms[npgt] = new Dictionary<GTTS, ISet<int>>();
                }
                pgtis.Add(gti);
            }
#if DEBUG
            completedDownPGTs.Add(npgt);
#endif
            return result;
        }

        private IDictionary<Function, ISet<int>> completeDownPGT(GTS npgt, out ISet<GTTS> ppgttsToPropagate)
        {
            var foundPGFAs = new Dictionary<Function, ISet<int>>();
            ppgttsToPropagate = new HashSet<GTTS>();
            foreach (var f in getPGTMemberFunctions(npgt))
                foreach (var pgfa in getPGTMembers(npgt, f))
                {
                    var ppgtt = getPGFAPGTT(pgfa);
                    int gtti;
                    LGTTsAndPGTTs laps;
                    if (pgttToGTTIMap.TryGetValue(ppgtt, out gtti))
                        addMapSet(foundPGFAs, f, gtti);
                    else if (orphanPGTTs.Contains(ppgtt))
                    {
                        var pgttGTIs = (from pgt in getPGTTPGTs(ppgtt) select getPGTGTI(pgt)).ToArray();
                        tryGetPGTTLGTTsAndPGTTs(ppgtt,out laps);
                        Debug.Assert(!laps.lgtts.Any());
                        Debug.Assert(laps.pgtts.Count==1);
                        gtti = mapNewGTTI(pgttGTIs, laps, false);
                        enqueueUpGTTI(gtti, laps);
                        addMapSet(foundPGFAs, f, gtti);
                    }
                    else if (tryGetPGTTLGTTsAndPGTTs(ppgtt, out laps))
                    {
                        var pgttGTIs = (from pgt in getPGTTPGTs(ppgtt) select getPGTGTI(pgt)).ToArray();
                        gtti = mapNewGTTI(pgttGTIs, laps, true);
                        addMapSet(foundPGFAs, f, gtti);
                    }
                    else
                    {
                        addMapMap(ppgttToPPGTByPPGFA, ppgtt, pgfa, npgt);
                        if (!ppgttMissingTerms.ContainsKey(ppgtt))
                            ppgttsToPropagate.Add(ppgtt);
                    }
                }
            return foundPGFAs;
        }
        /*
        private void propagatePotentialPGTTs(HashSet<GTTS> newPGTTs)
        {
            var todoDownPGTTS = new Queue<GTTS>();
            foreach (var ppgtt in newPGTTs)
                if (!ppgttMissingTerms.ContainsKey(ppgtt))
                    todoDownPGTTS.Enqueue(ppgtt);
            while (todoDownPGTTS.Any())
            {
                var ppgtt = todoDownPGTTS.Dequeue();
                int gtti;
                if (pgttToGTTIMap.TryGetValue(ppgtt, out gtti))
                    ppgttFound(ppgtt, gtti);
                else if (ppgttMissingTerms.ContainsKey(ppgtt))
                    continue;
                else
                {
                    LGTTsAndPGTTs laps;
                    if (tryGetPGTTLGTTsAndPGTTs(ppgtt, out laps))
                        ppgttFoundUniverse(laps);
                    else
                    {
                        var ppgts = getLocalPGTTPGTs(ppgtt);
                        ppgttMissingTerms[ppgtt] = new HashSet<int>();
                        var numTerms = ppgts.Length;
                        for (var i = 0; i < numTerms; i++)
                        {
                            var ppgt = ppgts[i];
                            int gti;
                            LGTsAndPGTs laps1;
                            if (pgtToGTIMap.TryGetValue(ppgt, out gti))
                            { }
                            else if (tryGetPGTLGTsAndPGTs(ppgt, out laps1))
                            {
                                gti = mapNewGTI(laps1, true);
                            }
                            else
                            {
                                IDictionary<GTTS, ISet<int>> ppgttTerm;
                                if (!ppgtToPPGTTTerms.TryGetValue(ppgt, out ppgttTerm) /*&& !pgtsCompletedDown.Contains(ppgt)* /)
                                {
                                    ppgtToPPGTTTerms[ppgt] = ppgttTerm = new Dictionary<GTTS, ISet<int>>();
                                    var pPPGTTs = propagatePPGT(ppgt);
                                    foreach (var pPPGTT in pPPGTTs)
                                        todoDownPGTTS.Enqueue(pPPGTT);
//                                    pgtsCompletedDown.Add(ppgt);
                                }
                                ISet<int> e;
                                if (!ppgttTerm.TryGetValue(ppgtt, out e))
                                    ppgttTerm[ppgtt] = e = new HashSet<int>();
                                e.Add(i);
                                ppgttMissingTerms[ppgtt].Add(i);
                            }
                            Debug.Assert(ppgttMissingTerms[ppgtt].Contains(i) ^ pgtToGTIMap.ContainsKey(ppgt));
                        }
                        if (!ppgttMissingTerms[ppgtt].Any())
                            ppgttFound(ppgtt);
                    }
                }//else of if (pgttToGTTIMap.TryGetValue(ppgtt, out gtti))
            }
        }

        private IEnumerable<GTTS> propagatePPGT(GTS ppgt)
        {
            var functions = new HashSet<Function>(getPGTMemberFunctions(ppgt));
            var result = new HashSet<GTTS>();
            foreach (var f in functions)
            {
                var pgfaSets = new HashSet<GFAS>(getPGTMembers(ppgt,f));
                ISet<GTTS> newPGTTs1;
                var ppgts = makePPGTs(pgfaSets, out newPGTTs1);
                result.UnionWith(newPGTTs1);
            }
            return result;
        }
*/
        protected int mapPGTTGTTI(GTTS ppgtt, bool isRim)
        {
            Debug.Assert(!pgttToGTTIMap.ContainsKey(ppgtt));
            Debug.Assert(!orphanPGTTs.Contains(ppgtt));
            Debug.Assert(!ppgttToPPGTByPPGFA.ContainsKey(ppgtt));
            var gttgtis = (from pgt in getLocalPGTTPGTs(ppgtt) select getPGTGTI(pgt)).ToArray();
            var key = makeGTTKey(gttgtis);
            LGTTsAndPGTTs laps;
            tryGetPGTTLGTTsAndPGTTs(ppgtt, out laps);
            Debug.Assert(!laps.lgtts.Any());
            var gtti = mapNewGTTI(gttgtis, key, laps, isRim);
            return gtti;
        }
        /*
        private void ppgttFoundUniverse(LGTTsAndPGTTs lgttsAndPgtts)
        {
#if DEBUG
            Debug.Assert(lgttsAndPgtts.lgtts.Any());
            foreach (var lgtt in lgttsAndPgtts.lgtts)
                Debug.Assert(!lgttToGTTIMap.ContainsKey(lgtt));
#endif
            var lgtt0 = lgttsAndPgtts.lgtts.First();
            var gtis = (from lgt in lgtt0.gTerms select getLGTGTI(lgt)).ToArray();
            var key = makeGTTKey(gtis);
            var gtti = mapNewGTTI(gtis, key, lgttsAndPgtts, false);
            foreach (var ppgtt in lgttsAndPgtts.pgtts)
                if (ppgttToPPGTByPPGFA.ContainsKey(ppgtt))
                    ppgttFound(ppgtt, gtti);
        }*/
        protected int ppgttFound(GTTS ppgtt,bool isRim)
        {
            ppgttToPPGTByPPGFA.Remove(ppgtt);
            ppgttMissingTerms.Remove(ppgtt);
            var gtti = mapPGTTGTTI(ppgtt, isRim);
            if (!isRim)
                enqueueUpGTTI(gtti, new GroundTupleEC[0], new[]{ppgtt});
            return gtti;
//            ppgttFound(ppgtt, gtti);
        }

/*        private void ppgttFound(GTTS ppgtt, int gtti)
        {
            Debug.Assert(gttis[gtti].pgtts.Contains(ppgtt));
            foreach (var ppgtKV in ppgttToPPGTByPPGFA[ppgtt])
                ppgtFound(ppgtKV.Value, ppgtKV.Key);
        }

#if DEBUG
        ISet<GTS> foundPPGTs = new HashSet<GTS>();
#endif
       private void ppgtFound(GTS ppgt, GFAS ppgfa)
        {
#if DEBUG
            Debug.Assert(!foundPPGTs.Contains(ppgt));
            Debug.Assert(!pgtToGTIMap.ContainsKey(ppgt));
            foundPPGTs.Add(ppgt);
#endif
            ISet<int> gtis;
            if (ppgtToGTIs.TryGetValue(ppgt, out gtis))
            {
                Debug.Assert(gtis.Any());
                var gti = gtis.First();
                enqueueUpGTI(gti, new HashSet<GroundTermEC>(), new HashSet<GTS> { ppgt });
                foreach (var mgti in gtis.Skip(1))
                    enqueueMergeGTI(gti, mgti);
            }
            else
            {
                var gti = getPGTGTI(ppgt);
            }
            IDictionary<GTTS, ISet<int>> ppgttTerms;
            if (ppgtToPPGTTTerms.TryGetValue(ppgt,out ppgttTerms))
                foreach (var ppgttKV in ppgttTerms)
                {
                    var ppgtt = ppgttKV.Key;
                    foreach (var termNum in ppgttKV.Value)
                    {
                        Debug.Assert(ppgttMissingTerms[ppgtt].Contains(termNum));
                        ppgttMissingTerms[ppgtt].Remove(termNum);
                        if (!ppgttMissingTerms[ppgtt].Any())
                        {
                            ppgttMissingTerms.Remove(ppgtt);
                            var gtti = mapPGTTGTTI(ppgtt, false);
                        }
                    }
                }
            Debug.Assert(pgtToGTIMap.ContainsKey(ppgt));
        }
        */
        protected int getLGTGTI(GroundTermEC lgt)
        {
            int gti;
            if (!lgtToGTIMap.TryGetValue(lgt, out gti))
                gti = mapNewGTI(getLGTLGTsAndPGTs(lgt), true);
            return gti;
        }
        private int getPGTGTI(GTS pgt)
        {
            int gti;
            if (!pgtToGTIMap.TryGetValue(pgt, out gti))
            {
                LGTsAndPGTs laps;
                var found = tryGetPGTLGTsAndPGTs(pgt, out laps);
                gti = mapNewGTI(laps, laps.lgts.Count==1);
                if (laps.lgts.Count != 1)
                {
//                    Debug.Assert(!laps.lgts.Any());
//                    Debug.Assert(laps.pgts.Count==1);
                    enqueueUpGTI(gti, laps);
                }
            }
            return gti;
        }
        protected int getLGTTGTTI(GroundTupleEC lgtt, bool isRim)
        {
            int gtti;
            if (!lgttToGTTIMap.TryGetValue(lgtt, out gtti))
            {
                var gttGTIs = (from lgt in lgtt.gTerms select getLGTGTI(lgt)).ToArray();
                var key = makeGTTKey(gttGTIs);
                var laps = getLGTTLGTTsAndPGTTs(lgtt);
                if (gttKeyToGTTIMap.TryGetValue(key, out gtti))
                    gttis[gtti].add(laps);
                else
                    gtti = mapNewGTTI(gttGTIs, laps, isRim);
                if (!gttis[gtti].isRim)
                    enqueueUpGTTI(gtti, laps);
            }
            return gtti;
        }

        protected virtual int getPGTTGTTI(GTTS pgtt, bool isRim)
        {
            int gtti;
            if (!pgttToGTTIMap.TryGetValue(pgtt, out gtti))
            {
                LGTTsAndPGTTs laps;
                if (tryGetPGTTLGTTsAndPGTTs(pgtt,out laps))
                {
                }
                var gtis = (from pgt in getPGTTPGTs(pgtt) select getPGTGTI(pgt)).ToArray();
                if (!pgttToGTTIMap.TryGetValue(pgtt, out gtti))
                {
                    var key = makeGTTKey(gtis);
                    gtti = mapNewGTTI(gtis, key, laps, isRim);
                }
            }

            return gtti;
        }

        private int mapNewGTTI(int[] gttGTIs,LGTTsAndPGTTs laps, bool isRim)
        {
            Debug.Assert(laps.lgtts.Any());
            var key = makeGTTKey(gttGTIs);
            return mapNewGTTI(gttGTIs,key, laps, isRim);
        }

        private IEnumerable<GTS> makePPGTs(ISet<GFAS> pgfaSets, out ISet<GTTS> ppgtts)
        {
            var ppgfas = new HashSet<GFAS>(pgfaSets);
            ppgtts = new HashSet<GTTS>();
            var ppgts = new HashSet<GTS>();
            foreach (var ppgfa in ppgfas)
            {
                var ppgt = getLocalPGFAPGT(ppgfa);
                var ppgtt = getLocalPGFAPGTT(ppgfa);
                ppgts.Add(ppgt);
                ppgtts.Add(ppgtt);

                IDictionary<GFAS, GTS> e;
                if (!ppgttToPPGTByPPGFA.TryGetValue(ppgtt, out e))
                    ppgttToPPGTByPPGFA[ppgtt] = e = new Dictionary<GFAS, GTS>();
                else
                    Debug.Assert(!e.ContainsKey(ppgfa));
                e[ppgfa] = ppgt;
            }
            return ppgts;
        }

        private void propagateUpGTILGT(int gti, GroundTermEC nlgt)
        {
            foreach (var slgtt in universe.groundTermSuperGroundTuples[nlgt])
            {
                int sgtti;
                if (!lgttToGTTIMap.TryGetValue(slgtt, out sgtti))
                {
                    var sgttKey = getGTTKey(slgtt);
                    var laps = getLGTTLGTTsAndPGTTs(slgtt);
                    if (!gttKeyToGTTIMap.TryGetValue(sgttKey, out sgtti))
                    {
                        var sgttGTIs = (from slgt in slgtt.gTerms select lgtToGTIMap[slgt]).ToArray();
                        sgtti = mapNewGTTI(sgttGTIs, sgttKey, laps, false);
                    }
                    else
                    {
                        foreach (var lgtt in laps.lgtts)
                            gttis[sgtti].addLGTT(slgtt);
                        foreach (var pgtt in laps.pgtts)
                            gttis[sgtti].addPGTT(pgtt);
                    }
                    enqueueUpGTTI(sgtti, laps);
                }
                else if (gttis[sgtti].isRim)
                {
                    gttis[sgtti].isRim = false;
                    makePredecessorTuples(sgtti);
                    enqueueUpGTTI(sgtti, gttis[sgtti].lgtts, gttis[sgtti].pgtts);
                }
            }
            var sgtts = new HashSet<GroundTupleEC>(from lgt in gtis[gti].lgts from sgtt in universe.groundTermSuperGroundTuples[lgt] select sgtt);
            sgtts.UnionWith(from lgt in gtis[gti].lgts from rgtt in universe.groundTermSuperSuccessorForeignTuples[lgt] select rgtt);
            {
                var pgtts = makePredecessorPGTTs(sgtts);
                foreach (var pgtt in pgtts)
                {
                    pgttsToKeep.Add(pgtt);
                    if (!pgttToGTTIMap.ContainsKey(pgtt))
                    {
                        var ngtis = (from pgt in getLocalPGTTPGTs(pgtt) select getPGTGTI(pgt)).ToArray();
                        var key = makeGTTKey(ngtis);
                        LGTTsAndPGTTs nlaps;
                        tryGetPGTTLGTTsAndPGTTs(pgtt, out nlaps);
                        int gtti;
                        if (!gttKeyToGTTIMap.TryGetValue(key, out gtti))
                            gtti = mapNewGTTI(ngtis, key, nlaps, false);
                        else
                            gttis[gtti].add(nlaps);
                        enqueueUpGTTI(gtti, nlaps);
                    }
                }
            }
        }
        private void propagateUpGTIPGT(int gti, GTS pgt)
        {
            Debug.Assert(!ppgtToPPGTTTerms.ContainsKey(pgt));
            Debug.Assert(!orphanPGTs.Contains(pgt));
            var spgttsKV = getPGTSuperPGTTs(pgt);
            foreach (var spgttKV in spgttsKV)
            {
                var spgtt = spgttKV.pgtt;
                var spgts = spgttKV.pgts;
                int sgtti;
                if (pgttToGTTIMap.TryGetValue(spgtt, out sgtti))
                {
                    Debug.Assert(gtis[gti].superGTTIs.Contains(sgtti));
                    Debug.Assert(!gttis[sgtti].isRim);
                }
                else
                {
                    var spgttKey = makeGTTKey(from spgt in spgts select getPGTGTI(spgt));
                    if (gttKeyToGTTIMap.TryGetValue(spgttKey, out sgtti))
                    {
                        Debug.Assert(!orphanPGTTs.Contains(spgtt));
                        Debug.Assert(!ppgttMissingTerms.ContainsKey(spgtt));
                        LGTTsAndPGTTs laps;
                        tryGetPGTTLGTTsAndPGTTs(spgtt, out laps);
                        enqueueUpGTTI(sgtti, laps);
                    }
                    else if (ppgttMissingTerms.ContainsKey(spgtt))
                    {
                        sgtti = mapNewPPGTT(spgtt);
                    }else
                        markOrphanPGTT(spgtt, spgttKey);
                }
            }
            foreach (var sgtti in gtis[gti].superGTTIs)
                foreach (var spgtt in makePredecessorPGTTs(sgtti))
                    if (!pgttToGTTIMap.ContainsKey(spgtt))
                    {
                        gttis[sgtti].addPGTT(spgtt);
                        propagateUpGTTIPGTT(sgtti, spgtt);
                    }
                    else
                        Debug.Assert(pgttToGTTIMap[spgtt] == sgtti);

            foreach (var lgt in gtis[gti].lgts)
                propagateUpGTILGT(gti, lgt);
        }
        private void propagateUpGTI(int gti, GTINews gtiNews)
        {
            #region preconditions
#if DEBUG
            foreach (var pgt in gtiNews.npgts)
                Debug.Assert(gtis[gti].pgts.Contains(pgt));
            foreach (var dlgt in gtiNews.nlgts)
                Debug.Assert(gtis[gti].lgts.Contains(dlgt));
#endif
            #endregion preconditions

            #region propagate up rim supsertuples
            if (!gtis[gti].isRim)
            {
                foreach (var gtti in gtis[gti].superGTTIs)
                    if (gttis[gtti].isRim)
                    {
                        gttis[gtti].isRim = false;
                        enqueueUpGTTI(gtti, gttis[gtti].lgtts, gttis[gtti].pgtts);
                        makePredecessorTuples(gtti);
                    }
            }
            #endregion propagate up rim supsertuples

            #region propagate new lgts
            foreach (var lgt in gtiNews.nlgts)
                propagateUpGTILGT(gti,lgt);
            #endregion propagate new lgts

            #region propagate new pgts
            foreach (var pgt in gtiNews.npgts)
                propagateUpGTIPGT(gti, pgt);
            #endregion propagate new gtas
        }

        private void enqueueUpGTTILGTT(int gtti, GroundTupleEC nlgtt)
        {
            enqueueUpGTTI(gtti, new HashSet<GroundTupleEC> { nlgtt }, new HashSet<GTTS>());
        }
        private void enqueueUpGTTIPGTT(int gtti, GTTS npgtt)
        {
            enqueueUpGTTIPGTTs(gtti, new[] { npgtt });
        }
        private void enqueueUpGTTIPGTTs(int gtti, IEnumerable<GTTS> npgtts)
        {
            enqueueUpGTTI(gtti, new HashSet<GroundTupleEC>(), npgtts);
        }
        private void enqueueUpGTTI(int gtti, LGTTsAndPGTTs laps)
        {
            enqueueUpGTTI(gtti, laps.lgtts,laps.pgtts);
        }
        protected void enqueueUpGTTI(int gtti, IEnumerable<GroundTupleEC> nlgtts, IEnumerable<GTTS> npgtts)
        {
            #region precondition
#if DEBUG
            foreach (var nlgtt in nlgtts)
            {
                Debug.Assert(lgttToGTTIMap[nlgtt] == gtti);
                Debug.Assert(gttis[gtti].lgtts.Contains(nlgtt));
            }
            foreach (var npgtt in npgtts)
            {
                Debug.Assert(pgttToGTTIMap[npgtt] == gtti);
                Debug.Assert(gttis[gtti].pgtts.Contains(npgtt));
            }
#endif
            #endregion precondition
            GTTINews news;
            if (!gttiNewInfo.TryGetValue(gtti, out news))
            {
                todoUpGTTIs.Enqueue(gtti);
                gttiNewInfo[gtti] = new GTTINews();
            }
            foreach (var npgtt in npgtts)
                gttiNewInfo[gtti].pgtts.Add(npgtt);
            foreach (var nlgtt in nlgtts)
                gttiNewInfo[gtti].lgtts.Add(nlgtt);
        }

        private void propagateUpGTTI(int gtti, IEnumerable<GroundTupleEC> nlgtts, IEnumerable<GTTS> npgtts)
        {
            foreach (var lgtt in nlgtts)
                propagateUpGTTILGTT(gtti, lgtt, npgtts);
            foreach (var pgtt in npgtts)
                propagateUpGTTIPGTT(gtti, pgtt);
        }
        private void propagateUpGTTILGTT(int gtti, GroundTupleEC nlgtt, IEnumerable<GTTS> npgtts)
        {
            #region new lgtt
            Debug.Assert(gttis[gtti].lgtts.Contains(nlgtt));
            foreach (var lgfa in universe.groundTupleIncomingGroundFAsByFunction[nlgtt].Values)
            {
                var lgt = lgfa.ec;
                int gtiByLGT;
                int gtiByIFA;

                if (gttis[gtti].incomingGTIsByFunction.TryGetValue(lgfa.function, out gtiByIFA))
                {
                    Debug.Assert(!gtis[gtiByIFA].isRim);
                    if (lgtToGTIMap.TryGetValue(lgt, out gtiByLGT))
                    {
                        if (gtis[gtiByLGT].isRim)
                            gtis[gtiByLGT].removeFromRim();
                        if (gtiByLGT != gtiByIFA)
                            enqueueMergeGTI(gtiByLGT, gtiByIFA);
                    }
                    else
                    {
                        Debug.Assert(!gtis[gtiByIFA].lgts.Contains(lgt));
                        var laps = getLGTLGTsAndPGTs(lgt);
                        gtis[gtiByIFA].add(laps);
                        enqueueUpGTI(gtiByIFA, laps);
                    }
                    Debug.Assert(gttis[gtti].incomingGTIsByFunction.ContainsKey(lgfa.function));
                }
                else
                {
                    var opgts = new HashSet<GTS>();
                    ISet<GTS> opgts1;
                    if (gttis[gtti].orphanIncomingPGTsByFunction.TryGetValue(lgfa.function, out opgts1))
                        opgts.UnionWith(opgts1);

                    int gti;
                    if (lgtToGTIMap.TryGetValue(lgt, out gtiByLGT))
                    {
                        if (gtis[gtiByLGT].isRim)
                            gtis[gtiByLGT].removeFromRim();
                        gti = gtiByLGT;
                        Debug.Assert(gttis[gtti].incomingGTIsByFunction.ContainsKey(lgfa.function));
                    }
                    else
                    {
                        var slaps = getLGTLGTsAndPGTs(lgt);
                        gti = mapNewGTI(slaps, false);
                        Debug.Assert(gttis[gtti].incomingGTIsByFunction.ContainsKey(lgfa.function));
                        enqueueUpGTI(gti, slaps);
                    }
                    if (opgts.Any())
                        mapOrphanPGTs(gti, opgts);
                }
                Debug.Assert(gttis[gtti].incomingGTIsByFunction.ContainsKey(lgfa.function));
                Debug.Assert(!gttis[gtti].orphanIncomingPGTsByFunction.ContainsKey(lgfa.function));
            }

            //make necessary completion calls
            foreach (var f in universe.groundTupleIncomingGroundFAsByFunction[nlgtt].Keys.Union(universe.getGroundTupleRejectedGFAs(nlgtt)))
            {
                var pgtts = npgtts.Union(gttis[gtti].pgtts);
                makePredecessorPGTs(f, pgtts, false);
            }
            #endregion new lgtt
        }
        private IEnumerable<Function> gttiCompletionFunctions(int gtti)
        {
            return gttis[gtti].incomingGTIsByFunction.Keys.Union(from lgtt in gttis[gtti].lgtts from f in universe.getGroundTupleRejectedGFAs(lgtt) select f);
        }
        private void propagateUpGTTIPGTT(int gtti, GTTS npgtt)
        {
            //make necessary completion calls
            foreach (var f in gttiCompletionFunctions(gtti))
            {
                var pgtts = new[] { npgtt };
                makePredecessorPGTs(f, pgtts, false);
            }

            Debug.Assert(gttis[gtti].pgtts.Contains(npgtt));
            IDictionary<Function, GFAS> pgfasByFunction = getPGTTIncomingPGFAsByFunction(npgtt);
            var functions = pgfasByFunction.Keys;
            foreach (var f in functions)
            {
                var pgfa = pgfasByFunction[f];
                var pgt = getPGFAPGT(pgfa);
                int gtiByIFA;
                int gtiByPGT;
                if (gttis[gtti].incomingGTIsByFunction.TryGetValue(f, out gtiByIFA))
                {
                    Debug.Assert(!gtis[gtiByIFA].isRim);
                    if (pgtToGTIMap.TryGetValue(pgt, out gtiByPGT))
                    {
                        if (gtis[gtiByPGT].isRim)
                            gtis[gtiByPGT].removeFromRim();
                        if (gtiByPGT != gtiByIFA)
                            enqueueMergeGTI(gtiByIFA, gtiByPGT);
                    }
                    else if (ppgtToPPGTTTerms.ContainsKey(pgt))
                    {
                        mapPPGT(gtiByIFA,pgt);
                    }
                    else 
                    {
                        if (orphanPGTs.Contains(pgt))
                            mapOrphanPGTs(gtiByIFA,new[]{pgt});
                        else
                        {
                            gtis[gtiByIFA].addPGT(pgt);
                            enqueueUpGTI(gtiByIFA, new HashSet<GroundTermEC>(), new HashSet<GTS> { pgt });
                        }
                    }
                }else if (pgtToGTIMap.TryGetValue(pgt,out gtiByPGT))
                {
                    if (gtis[gtiByPGT].isRim)
                        gtis[gtiByPGT].removeFromRim();
                    Debug.Assert(gttis[gtti].incomingGTIsByFunction[f] == gtiByPGT);
                }
                else if (ppgtToPPGTTTerms.ContainsKey(pgt))
                {
                    var gti = mapNewPPGT(pgt);
                    gtis[gti].mapGFA(f, gtti);
                }else
                {
                    gttis[gtti].addOrphanPGFA(f, pgfa);
                }
            }
        }

        private void mapPPGT(int gti, GTS ppgt)
        {
            var ppgttTers = ppgtToPPGTTTerms[ppgt];
            ppgtToPPGTTTerms.Remove(ppgt);
            var pgtis = ppgtToGTIs[ppgt];
            ppgtToGTIs.Remove(ppgt);
            gtis[gti].addPGT(ppgt);
            enqueueUpGTI(gti, new GroundTermEC[0], new[] { ppgt });
            foreach (var mgti in pgtis)
                enqueueMergeGTI(gti, mgti);
        }
        private int mapNewPPGT(GTS ppgt)
        {
            var ppgttTers = ppgtToPPGTTTerms[ppgt];
            ppgtToPPGTTTerms.Remove(ppgt);
            var pgtis = ppgtToGTIs[ppgt];
            ppgtToGTIs.Remove(ppgt);
            var gti = mapNewGTI(new GroundTermEC[0], new[] { ppgt },false);
            enqueueUpGTI(gti, new GroundTermEC[0], new[] { ppgt });
            foreach (var mgti in pgtis)
                enqueueMergeGTI(gti, mgti);
            return gti;
        }

        private int mapNewPPGTT(GTTS ppgtt)
        {
            Debug.Assert(ppgttMissingTerms.ContainsKey(ppgtt));
            ppgttMissingTerms.Remove(ppgtt);
            var gttpgts = getPGTTPGTs(ppgtt).ToArray();
            var gttgtis = (from pgt in gttpgts select getPGTGTI(pgt)).ToArray();
            var laps = new LGTTsAndPGTTs(new GroundTupleEC[0],new[]{ppgtt});
            var gtti = mapNewGTTI(gttgtis, laps, false);
            enqueueUpGTTI(gtti, laps);
            return gtti;
        }

        internal void mapOrphanPGTs(int gti, IEnumerable<GTS> oopgts)
        {
            var opgts = getSaturatedOrphanPGTs(oopgts);

            foreach (var opgt in opgts)
                pgtToGTIMap[opgt] = gti;
            foreach (var opgt in opgts)
                gtis[gti].addPGT(opgt);
            enqueueUpGTI(gti, new GroundTermEC[0], opgts);
        }
        internal void mapOrphanPGTTs(int gtti, IEnumerable<GTTS> oopgtts)
        {
#if DEBUG
            foreach (var opgtt in oopgtts)
                Debug.Assert(orphanPGTTs.Contains(opgtt));
#endif
            var opgtts = getSaturatedOrphanPGTTs(oopgtts);
            foreach (var opgtt in opgtts)
            {
                foreach (var pgt in getPGTTPGTs(opgtt))
                    gtis[pgtToGTIMap[pgt]].orphanSuperPGTTs.Remove(opgtt);
                orphanPGTTs.Remove(opgtt);
                gttis[gtti].addPGTT(opgtt);
            }
            enqueueUpGTTIPGTTs(gtti, opgtts);
        }

        private IEnumerable<GTTS> getSaturatedOrphanPGTTs(IEnumerable<GTTS> oopgtts)
        {
            var keys = new HashSet<string>(from oopgtt in oopgtts select makeGTTKey((from pgt in getPGTTPGTs(oopgtt) select pgtToGTIMap[pgt]).ToArray()));
            var result = new HashSet<GTTS>();
            foreach (var key in keys)
            {
                result.UnionWith(tupleKeyToOrphanPGTTMap[key]);
                tupleKeyToOrphanPGTTMap.Remove(key);
            }
            return result;
        }

        private ISet<GTS> getSaturatedOrphanPGTs(IEnumerable<GTS> oopgts)
        {
            var opgts = new HashSet<GTS>(oopgts);
            var todo = new Queue<GTS>();
            foreach (var opgt in opgts)
                todo.Enqueue(opgt);
            while (todo.Any())
            {
                var opgt = todo.Dequeue();
                foreach (var f in getPGTMemberFunctions(opgt))
                    foreach (var pgfa in getPGTMembers(opgt, f))
                    {
                        int gtti;
                        var pgtt = getPGFAPGTT(pgfa);
                        if (pgttToGTTIMap.TryGetValue(pgtt, out gtti))
                        {
                            ISet<GTS> opgts2;
                            if (gttis[gtti].orphanIncomingPGTsByFunction.TryGetValue(f, out opgts2))
                            {
                                foreach (var opgt2 in opgts2)
                                    if (opgts.Add(opgt2))
                                        todo.Enqueue(opgt2);
                                gttis[gtti].orphanIncomingPGTsByFunction.Remove(f);
                            }
                        }
                    }
            }

            Debug.Assert(opgts.All(orphanPGTs.Contains));
            orphanPGTs.ExceptWith(opgts);
            return opgts;
        }
        #endregion propagate

        #region mapping
        protected string makeGTTKey(IEnumerable<int> gtis)
        {
            return "(" + Operator.commaSeparatedList(from gti in gtis select gti.ToString()) + ")";
        }

        protected int mapNewGTTI(int[] gtis, string key, LGTTsAndPGTTs laps, bool isRim)
        {
            return mapGTTI(gtis, key, laps.lgtts, laps.pgtts, isRim);
        }
        protected int mapGTTI(int[] gttgtis, string key, IEnumerable<GroundTupleEC> lgtts, IEnumerable<GTTS> opgtts, bool isRim)
        {
            orphanPGTTs.ExceptWith(opgtts);
            #region precondition
#if DEBUG
            Debug.Assert(!gttKeyToGTTIMap.ContainsKey(key));
            foreach (var lgtt in lgtts)
            {
                Debug.Assert(!lgttToGTTIMap.ContainsKey(lgtt));
                var lgttGTIs = (from lgt in lgtt.gTerms select lgtToGTIMap[lgt]).ToArray();
                Debug.Assert(gttgtis.SequenceEqual(lgttGTIs));
            }
            foreach (var pgtt in opgtts)
            {
                Debug.Assert(!pgttToGTTIMap.ContainsKey(pgtt));
                Debug.Assert(!orphanPGTTs.Contains(pgtt));
                Debug.Assert(!ppgttToPPGTByPPGFA.ContainsKey(pgtt));
                var pgttGTIs = (from pgt in getPGTTPGTs(pgtt) select pgtToGTIMap[pgt]).ToArray();
                Debug.Assert(gttgtis.SequenceEqual(pgttGTIs));
//                Debug.Assert(!universeHasPGTT(pgtt) || lgtts.Contains(getPGTTLGTT(pgtt))); // universe.groundTupleMergeMap.ContainsKey(pgtt) || lgtts.Contains(universe.transitiveMerge(pgtt)));
            }
#endif
            #endregion precondition

            var pgtts = new HashSet<GTTS>(opgtts);
            ISet<GTTS> lorphanPGTTs;
            if (tupleKeyToOrphanPGTTMap.TryGetValue(key, out lorphanPGTTs))
            {
                orphanPGTTs.ExceptWith(lorphanPGTTs);
                foreach (var opgtt in lorphanPGTTs)
                    foreach (var pgt in getPGTTPGTs(opgtt))
                        this.gtis[pgtToGTIMap[pgt]].orphanSuperPGTTs.Remove(opgtt);
                pgtts.UnionWith(lorphanPGTTs);
                tupleKeyToOrphanPGTTMap.Remove(key);
            }

            var gtti = getTupleIndex();
            var frim = isRim && gttgtis.All(gti => gtis[gti].isRim);
            gttis[gtti] = new GTTIInfo(this, gtti, gttgtis, lgtts, pgtts, frim );
            makePredecessorTuples(gtti);
            Debug.Assert(gttKeyToGTTIMap.Count == gttis.Count);
            Debug.Assert(key == makeGTTKey(gttgtis));
            Debug.Assert(gttKeyToGTTIMap[key] == gtti);
            Debug.Assert(gttKeyToGTTIMap.Count == gttis.Count);
            if (!frim)
            {
                enqueueUpGTTI(gtti, lgtts,pgtts);
            }
            return gtti;
        }

        private void makePredecessorTuples(int gtti)
        {
            foreach (var pgtt in makePredecessorPGTTs(gtti))
                if (!pgttToGTTIMap.ContainsKey(pgtt))
                {
                    LGTTsAndPGTTs laps;
                    tryGetPGTTLGTTsAndPGTTs(pgtt, out laps);
                    gttis[gtti].add(laps);
                    if (!gttis[gtti].isRim)
                        enqueueUpGTTI(gtti, laps);
                }
            foreach (var f in gttiCompletionFunctions(gtti))
                makePredecessorPGTs(f, gttis[gtti].pgtts, false);
        }

        private void markOrphanPGTT(GTTS opgtt, string pgttKey)
        {
            #region precondition
            Debug.Assert(!gttKeyToGTTIMap.ContainsKey(pgttKey));
            Debug.Assert(!pgttToGTTIMap.ContainsKey(opgtt));
//            Debug.Assert(!orphanPGTTs.Contains(opgtt));
            Debug.Assert(!ppgttToPPGTByPPGFA.ContainsKey(opgtt));
            #endregion precondition

            orphanPGTTs.Add(opgtt);
            ISet<GTTS> opgtts;
            if (!tupleKeyToOrphanPGTTMap.TryGetValue(pgttKey, out opgtts))
                tupleKeyToOrphanPGTTMap[pgttKey] = opgtts = new HashSet<GTTS>();
//            Debug.Assert(!opgtts.Contains(opgtt));
            opgtts.Add(opgtt);
            foreach (var pgt in getPGTTPGTs(opgtt))
                gtis[pgtToGTIMap[pgt]].addOrphanPGTT(opgtt);
#if DEBUG
            foreach (var pgt in getPGTTPGTs(opgtt))
                Debug.Assert(gtis[pgtToGTIMap[pgt]].orphanSuperPGTTs.Contains(opgtt));
#endif
        }

        private string getGTTAKey(IEnumerable<GTS> pgts)
        {
            var gtis = (from pgt in pgts select getPGTGTI(pgt)).ToList();
            var sgttKey = makeGTTKey(gtis);
            return sgttKey;
        }

        private string getGTTKey(GroundTupleEC slgtt)
        {
            var sgtis = new int[slgtt.gTerms.Count];
            for (var i = 0; i < slgtt.gTerms.Count; i++)
            {
                sgtis[i] = getLGTGTI(slgtt.gTerms[i]);
            }
            var sgttKey = makeGTTKey(sgtis);
            return sgttKey;
        }

        ISet<GTS> orphanPGTs = new HashSet<GTS>();
        ISet<GTTS> orphanPGTTs = new HashSet<GTTS>();

        private GTS getOrphanedPGT(GFAS pgfa)
        {
            var pgt = getPGFAPGT(pgfa);
            Debug.Assert(!pgtToGTIMap.ContainsKey(pgt));
            Debug.Assert(!ppgtToGTIs.ContainsKey(pgt));
            Debug.Assert(!ppgtToPPGTTTerms.ContainsKey(pgt));
            return pgt;
        }
        #endregion mapping

        #region queue
        private void enqueueMergeGTI(int gti1, int gti2)
        {
            Debug.Assert(gti1 != gti2);
            while (gtiMergeMap.ContainsKey(gti1))
                gti1 = gtiMergeMap[gti1];
            while (gtiMergeMap.ContainsKey(gti2))
                gti2 = gtiMergeMap[gti2];
            if (gti1 == gti2)
                return;

            int dst;
            int src;
            if (gti1 > gti2)
            {
                dst = gti1;
                src = gti2;
            }
            else
            {
                dst = gti2;
                src = gti1;
            }

            enqueueUpGTI(dst, new HashSet<GroundTermEC>(), new HashSet<GTS>());
            gtiNewInfo[dst].newGTIs.Add(src);
            gtiMergeMap[src] = dst;
        }
        IDictionary<int, int> gtiMergeMap = new Dictionary<int, int>();
        public int tMergeGTI(int gti)
        {
            var result = gti;
            while (gtiMergeMap.ContainsKey(result))
                result = gtiMergeMap[result];
            return result;
        }
        public int tMergeGTTI(int gtti)
        {
            var result = gtti;
            while (gttiMergeMap.ContainsKey(result))
                result = gttiMergeMap[result];
            return result;
        }
        protected void enqueueUpGTI(int gti, LGTsAndPGTs laps)
        {
            enqueueUpGTI(gti, laps.lgts, laps.pgts);
        }
        protected void enqueueUpGTI(int gti, IEnumerable<GroundTermEC> nlgts, IEnumerable<GTS> npgts)
        {
            #region preconditions
#if DEBUG
//            Debug.Assert(!gtis[gti].isRim);
            foreach (var nlgt in nlgts)
            {
                Debug.Assert(lgtToGTIMap[nlgt] == gti);
                Debug.Assert(gtis[gti].lgts.Contains(nlgt));
            }
            foreach (var npgt in npgts)
            {
                Debug.Assert(pgtToGTIMap[npgt] == gti);
                Debug.Assert(gtis[gti].pgts.Contains(npgt));
            }
#endif 
            #endregion preconditions

            if (!gtiNewInfo.ContainsKey(gti))
            {
                gtiNewInfo[gti] = new GTINews(this);
                todoUpGTIs.Enqueue(gti);
            }
            foreach (var newPGT in npgts)
            {
                pgtToGTIMap[newPGT] = gti;
                gtiNewInfo[gti].npgts.Add(newPGT);
            }
            foreach (var newLGT in nlgts)
            {
                lgtToGTIMap[newLGT] = gti;
                gtiNewInfo[gti].nlgts.Add(newLGT);
            }
        }

        protected int mapNewOrphanGTI(GTS opgt)
        {
            var opgts = getSaturatedOrphanPGTs(new[]{opgt});
            return mapNewGTI(new GroundTermEC[0], opgts,false);

        }
        protected int mapNewGTI(LGTsAndPGTs laps, bool isRim)
        {
            return mapNewGTI(laps.lgts,laps.pgts,isRim);
        }
        protected int mapNewGTI(IEnumerable<GroundTermEC> lgts, IEnumerable<GTS> spgts, bool isRim)
        {
            var opgts = new HashSet<GTS>(spgts.Intersect(orphanPGTs));
            var sopgts = getSaturatedOrphanPGTs(opgts);
            var pgts = new HashSet<GTS>(spgts.Union(sopgts));
            #region precondition
#if DEBUG
            Debug.Assert(lgts.Any() || pgts.Any());
            var type = lgts.Any() ? lgts.First().type : getPGTType(pgts.First());

            foreach (var lgt in lgts)
            {
                Debug.Assert(!lgtToGTIMap.ContainsKey(lgt));
                Debug.Assert(lgt.type.isEquivalent(type));
            }
            foreach (var pgt in pgts)
            {
                Debug.Assert(!pgtToGTIMap.ContainsKey(pgt));
                Debug.Assert(!orphanPGTs.Contains(pgt));
                Debug.Assert(!ppgtToGTIs.ContainsKey(pgt));
                Debug.Assert(!ppgtToPPGTTTerms.ContainsKey(pgt));
                Debug.Assert(getPGTType(pgt).isEquivalent(type));
            }
#endif
            #endregion precondition

            var gti = getTermIndex();
            gtis[gti] = new GTIInfo(this, gti, lgts, pgts);
            if (!isRim)
                gtis[gti].removeFromRim();
            return gti;
        }
        #endregion queue

        #region classes
        protected class GTIInfo
        {
            public GTIInfo(TemplateMaker<U,MT,GTS,GTTS,GFAS> maker, int gti, IEnumerable<GroundTermEC> lgts, IEnumerable<GTS> pgts)
            {
                this.maker = maker;
                this.gti = gti;
                this.type = (lgts.Any() ? lgts.First().type : maker.getPGTType(pgts.First()));
                foreach (var lgt in lgts)
                    addLGT(lgt);
                foreach (var pgt in pgts)
                    addPGT(pgt);
            }

            public void add(LGTsAndPGTs laps)
            {
                foreach (var lgt in laps.lgts)
                    addLGT(lgt);
                foreach (var pgt in laps.pgts)
                    addPGT(pgt);
            }
            public void addLGT(GroundTermEC lgt)
            {
                Debug.Assert(!lgts.Contains(lgt));
                Debug.Assert(lgt.type.isEquivalent(type));
                Debug.Assert(!maker.lgtToGTIMap.ContainsKey(lgt));
                lgts.Add(lgt);
                maker.lgtToGTIMap[lgt] = gti;
                if (!isRim)
                    addLGTGFAs(lgt);
            }
            private void addLGTGFAs(GroundTermEC lgt)
            {
                foreach (var lgfa in lgt.gfas)
                    mapGFA(lgfa.function, maker.getLGTTGTTI(lgfa.arguments, true));
            }

            public void addPGT(GTS pgt)
            {
                Debug.Assert(!pgts.Contains(pgt));
                Debug.Assert(!maker.pgtToGTIMap.ContainsKey(pgt) || maker.pgtToGTIMap[pgt]==gti);
                Debug.Assert(!maker.orphanPGTs.Contains(pgt));
                Debug.Assert(!maker.ppgtToGTIs.ContainsKey(pgt));
                Debug.Assert(!maker.ppgtToPPGTTTerms.ContainsKey(pgt));
                Debug.Assert(maker.getPGTType(pgt).isEquivalent(type));
                pgts.Add(pgt);
                maker.pgtToGTIMap[pgt] = gti;
                if (!isRim)
                    addPGTPGFAs(pgt);
            }
            private void addPGTPGFAs(GTS pgt)
            {
                var functions = maker.getPGTMemberFunctions(pgt);
                foreach (var f in functions)
                    foreach (var gtti in maker.getPGTPGFAGTTIs(pgt,f))
                        mapGFA(f, gtti);
            }

            private IEnumerable<GroundFunctionApplicationEC[]> getGFAAs(IEnumerable<ISet<GroundFunctionApplicationEC>> jgttsa)
            {
                Debug.Assert(jgttsa.Count() > 0);
                var prefixes = (from jgtt in jgttsa.First() select new[] { jgtt }).ToList();
                if (jgttsa.Count() == 1)
                    return prefixes;
                else
                {
                    var suffixes = getGFAAs(jgttsa.Skip(1));
                    return (from p in prefixes from s in suffixes select p.Concat(s).ToArray()).ToArray();
                }
            }

            public void removeFromRim()
            {
                Debug.Assert(isRim);
                isRim = false;
                Debug.Assert(!gfas.Any());
                foreach (var lgt in lgts)
                    addLGTGFAs(lgt);
                foreach (var pgt in pgts)
                    addPGTPGFAs(pgt);

                maker.enqueueUpGTI(gti, lgts, pgts);
            }

            private readonly IType type;
            internal void merge(GTIInfo mGTIInfo)
            {
                if (isRim && !mGTIInfo.isRim)
                    removeFromRim();
                else if (!isRim && mGTIInfo.isRim)
                    mGTIInfo.removeFromRim();

                var mgti = mGTIInfo.gti;
                foreach (var gfaKV in mGTIInfo.gfas)
                {
                    var function = gfaKV.Key;
                    foreach (var sgtti in gfaKV.Value)
                    {
                        var gtti = maker.tMergeGTTI(sgtti);
                        int gfaGTI;
                        if (maker.gttis[gtti].incomingGTIsByFunction.TryGetValue(function, out gfaGTI))
                        {
                            Debug.Assert(maker.tMergeGTI(gfaGTI) == maker.tMergeGTI(gti));
                            Debug.Assert(gfaGTI == mgti);
                            Debug.Assert(!maker.gtis.ContainsKey(gfaGTI));
                        }
                        maker.gttis[gtti].incomingGTIsByFunction[function] = gti;
                        mapGFAInt(gfaKV.Key, gtti);
                    }
                }
                foreach (var lgt in mGTIInfo.lgts)
                {
                    maker.lgtToGTIMap.Remove(lgt);
                    addLGT(lgt);
                }

                foreach (var pgt in mGTIInfo.pgts)
                {
                    maker.pgtToGTIMap.Remove(pgt);
                    addPGT(pgt);
                }
                foreach (var pPGT in mGTIInfo.potentialPGTs)
                {
                    potentialPGTs.Add(pPGT);
                    maker.ppgtToGTIs[pPGT].Remove(mgti);
                    maker.ppgtToGTIs[pPGT].Add(gti);
                }
                foreach (var mgtti in mGTIInfo.superGTTIs)
                {
                    var gtti = maker.remapGTTI(mgtti, gti, mgti);
                    superGTTIs.Add(gtti);
                }
                foreach (var oGTT in mGTIInfo.orphanSuperPGTTs)
                {
                    var oldKey = maker.makeGTTKey(from spgt in maker.getPGTTPGTs(oGTT) select mGTIInfo.pgts.Contains(spgt) ? mgti :  maker.getPGTGTI(spgt));
                    var newKey = maker.makeGTTKey(from spgt in maker.getPGTTPGTs(oGTT) select maker.getPGTGTI(spgt));
                    var keyOPGTTs = maker.tupleKeyToOrphanPGTTMap[oldKey];
                    maker.tupleKeyToOrphanPGTTMap.Remove(oldKey);
                    maker.tupleKeyToOrphanPGTTMap[newKey] = keyOPGTTs;
                }
                foreach (var oGTT in mGTIInfo.orphanSuperPGTTs)
                {
                    var newKey = maker.makeGTTKey(from spgt in maker.getPGTTPGTs(oGTT) select maker.getPGTGTI(spgt));
                    int ngtti;
                    if (maker.gttKeyToGTTIMap.TryGetValue(newKey, out ngtti))
                    {
                        maker.mapOrphanPGTTs(ngtti, new[]{oGTT});
                    }
                    else
                        maker.markOrphanPGTT(oGTT, newKey);
                }
                foreach (var sgtti in superGTTIs)
                    maker.makePredecessorPGTTs(sgtti);
#if DEBUG
                foreach (var gttii in maker.gttis.Values)
                    foreach (var gttGTI in gttii.gtis)
                        Debug.Assert(gttGTI != mgti);
#endif
            }

            internal void mapGFA(Function f, int gtti)
            {
                int mgti;
                var opgtsToAdd = new HashSet<GTS>();
                ISet<GTS> opgts;
                if (maker.gttis[gtti].incomingGTIsByFunction.TryGetValue(f, out mgti))
                {
                    if (gti != mgti)
                        maker.enqueueMergeGTI(gti, mgti);
                    maker.gttis[gtti].incomingGTIsByFunction.Remove(f);
                    maker.gtis[mgti].gfas[f].Remove(gtti);
                    if (!maker.gtis[mgti].gfas[f].Any())
                        maker.gtis[mgti].gfas.Remove(f);
                }else if (maker.gttis[gtti].orphanIncomingPGTsByFunction.TryGetValue(f,out opgts))
                    opgtsToAdd.UnionWith(opgts);
                Debug.Assert(!isRim);
                Debug.Assert(f.resultType.isEquivalent(type));
                Debug.Assert(!maker.gttis[gtti].incomingGTIsByFunction.ContainsKey(f) || maker.gttis[gtti].incomingGTIsByFunction[f] == gti);

                mapGFAInt(f, gtti);
                if (opgtsToAdd.Any())
                    maker.mapOrphanPGTs(gti, opgtsToAdd);
            }

            private void mapGFAInt(Function f, int gtti)
            {
                ISet<int> e;
                if (!gfas.TryGetValue(f, out e))
                    gfas[f] = e = new HashSet<int>();
                e.Add(gtti);
                Debug.Assert(!maker.gttis[gtti].incomingGTIsByFunction.ContainsKey(f) || maker.gttis[gtti].incomingGTIsByFunction[f] == gti);
                Debug.Assert(!maker.gttis[gtti].orphanIncomingPGTsByFunction.ContainsKey(f));
                maker.gttis[gtti].incomingGTIsByFunction[f] = gti;
                #region consistency
#if DEBUG
                foreach (var gtii in maker.gtis)
                    foreach (var gfa in gtii.Value.gfas)
                        foreach (var sgtti in gfa.Value)
                            Debug.Assert(maker.gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                #endregion consistency

            }

            internal void addOrphanPGTT(GTTS pgtt)
            {
                Debug.Assert(maker.getPGTTPGTs(pgtt).Any(pgts.Contains));
                orphanSuperPGTTs.Add(pgtt);
            }

            public bool isRim = true;
            public readonly ISet<GTTS> orphanSuperPGTTs = new HashSet<GTTS>();
            public readonly TemplateMaker<U, MT, GTS, GTTS, GFAS> maker;
            public readonly int gti;
            public readonly ISet<GroundTermEC> lgts = new HashSet<GroundTermEC>();
            public readonly ISet<GTS> pgts = new HashSet<GTS>();
            public readonly ISet<int> superGTTIs = new HashSet<int>();
            public readonly IDictionary<Function, ISet<int>> gfas = new Dictionary<Function, ISet<int>>();
            public readonly ISet<GTS> potentialPGTs = new HashSet<GTS>();

        }
        private   class GTINews
        {
            public GTINews(TemplateMaker<U, MT, GTS, GTTS,GFAS> maker)
            {
                this.maker = maker;
            }
            public readonly ISet<GroundTermEC> nlgts = new HashSet<GroundTermEC>();
            public readonly ISet<GTS> npgts = new HashSet<GTS>();
            public readonly ISet<GTS> mpgts = new HashSet<GTS>();
            public readonly ISet<int> newGTIs = new HashSet<int>();
            private readonly TemplateMaker<U, MT, GTS, GTTS,GFAS> maker;
        }
        protected class GTTIInfo
        {
            public GTTIInfo(TemplateMaker<U,MT,GTS,GTTS,GFAS> maker, int gtti, int[] gtis, IEnumerable<GroundTupleEC> lgtts, IEnumerable<GTTS> pgtts, bool isRim)
            {
                Debug.Assert(lgtts.Any() || pgtts.Any());
//                Debug.Assert(!isRim || (lgtts.Count() == 1 && pgtts.Count() == maker.getLGTTPGTTs(lgtts.First()).Count));// universe.groundTupleInverseMergeMap[lgtts.First()].Count));
                this.maker = maker;
                this.gtti = gtti;
                this.gtis = gtis.ToArray();
                this.isRim = isRim;

                var key = maker.makeGTTKey(gtis);
                maker.gttKeyToGTTIMap[key] = gtti;

                foreach (var lgtt in lgtts)
                    addLGTTInt(lgtt);
                foreach (var pgtt in pgtts)
                    addPGTTInt(pgtt);

                Debug.Assert(lgtts.All(lgtt => lgtt.dataTypes.isEquivalent(dataTypes)));
                Debug.Assert(pgtts.All(pgtt => maker.getPGTTDataType(pgtt).isEquivalent(dataTypes)));


                foreach (var gti in gtis)
                    maker.gtis[gti].superGTTIs.Add(gtti);

                Debug.Assert(check());
            }

            public bool check()
            {
#if DEBUG
                foreach (var gti in gtis)
                    Debug.Assert(maker.gtis[gti].superGTTIs.Contains(gtti));
#endif
                return true;
            }

            public ITypeTuple dataTypes { get { return lgtts.Any() ? lgtts.First().dataTypes : maker.getPGTTDataType(pgtts.First()); } } // pgtts.First().dataTypes; } }

            internal void add(LGTTsAndPGTTs laps)
            {
                foreach (var lgtt in laps.lgtts)
                    addLGTT(lgtt);
                foreach (var pgtt in laps.pgtts)
                    addPGTT(pgtt);
            }
            internal void addLGTT(GroundTupleEC lgtt)
            {
                Debug.Assert(!lgtts.Contains(lgtt));
                Debug.Assert(!maker.lgttToGTTIMap.ContainsKey(lgtt) || maker.lgttToGTTIMap[lgtt] == gtti);
                addLGTTInt(lgtt);
                completeIncomingFAs(pgtts, new HashSet<GroundTupleEC> { lgtt });
            }

            internal void addLGTTInt(GroundTupleEC lgtt)
            {
                lgtts.Add(lgtt);
                maker.lgttToGTTIMap[lgtt] = gtti;
            }

            internal void addPGTT(GTTS pgtt)
            {
                Debug.Assert(!maker.pgttToGTTIMap.ContainsKey(pgtt) || maker.pgttToGTTIMap[pgtt] == gtti);
                Debug.Assert(!maker.ppgttMissingTerms.ContainsKey(pgtt));
                Debug.Assert(!maker.orphanPGTTs.Contains(pgtt));
                Debug.Assert(!pgtts.Contains(pgtt));
                addPGTTInt(pgtt);
                completeIncomingFAs(new HashSet<GTTS> { pgtt }, lgtts);
            }
            internal void addPGTTInt(GTTS pgtt)
            {
//                Debug.Assert(!maker.ppgttToPPGTByPPGFA.ContainsKey(pgtt));
                Debug.Assert(!maker.ppgttMissingTerms.ContainsKey(pgtt));
                Debug.Assert(!maker.orphanPGTTs.Contains(pgtt));
                pgtts.Add(pgtt);
                maker.pgttToGTTIMap[pgtt] = gtti;
            }

            internal void addOrphanPGFA(Function f, GFAS pgfa)
            {
                var opgt = maker.getPGFAPGT(pgfa);
                if (orphanIncomingPGTsByFunction.ContainsKey(f) && orphanIncomingPGTsByFunction[f].Contains(opgt))
                    return;
#if DEBUG
                Debug.Assert(!maker.pgtToGTIMap.ContainsKey(opgt));
//                Debug.Assert(!maker.orphanPGTs.Contains(opgt));
                Debug.Assert(!maker.ppgtToGTIs.ContainsKey(opgt));
                Debug.Assert(!maker.ppgtToPPGTTTerms.ContainsKey(opgt));
                LGTsAndPGTs laps;
                Debug.Assert(!maker.tryGetPGTLGTsAndPGTs(opgt, out laps));
                Debug.Assert(!incomingGTIsByFunction.ContainsKey(f));
#endif
                ISet<GTS> opgts;
                if (!orphanIncomingPGTsByFunction.TryGetValue(f, out opgts))
                    orphanIncomingPGTsByFunction[f] = opgts = new HashSet<GTS>();
                opgts.Add(opgt);
                maker.orphanPGTs.Add(opgt);
            }

            private readonly TemplateMaker<U, MT, GTS, GTTS, GFAS> maker;
            public int gtti;
            public readonly int[] gtis;
            public bool isRim;
            public readonly ISet<GroundTupleEC> lgtts = new HashSet<GroundTupleEC>();
            public readonly ISet<GTTS> pgtts = new HashSet<GTTS>();
            public readonly IDictionary<Function, ISet<GTS>> orphanIncomingPGTsByFunction = new Dictionary<Function, ISet<GTS>>();
            public readonly IDictionary<Function, int> incomingGTIsByFunction = new Dictionary<Function,int>();

            internal void merge(GTTIInfo mgttiInfo)
            {
#if DEBUG
                foreach (var gtii in maker.gtis)
                    foreach (var gfa in gtii.Value.gfas)
                        foreach (var sgtti in gfa.Value)
                            Debug.Assert(maker.gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                Debug.Assert(maker.gttKeyToGTTIMap[maker.makeGTTKey(mgttiInfo.gtis)] == gtti); //mgttiInfo.gtti);
                Debug.Assert(maker.makeGTTKey(mgttiInfo.gtis) == maker.makeGTTKey(gtis));
                var mgtti = mgttiInfo.gtti;
                foreach (var gti in mgttiInfo.gtis)
                {
                    var gtiInfo = maker.gtis[gti];
                    gtiInfo.superGTTIs.Remove(mgtti);
                    gtiInfo.superGTTIs.Add(gtti);
                }
                foreach (var lgtt in mgttiInfo.lgtts)
                {
                    maker.lgttToGTTIMap[lgtt] = gtti;
                    addLGTT(lgtt);
                }
                foreach (var pgtt in mgttiInfo.pgtts)
                {
                    maker.pgttToGTTIMap[pgtt] = gtti;
                    addPGTT(pgtt);
                }

                foreach (var oKV in mgttiInfo.orphanIncomingPGTsByFunction)
                {
                    int sgti;
                    var function = oKV.Key;
                    if (incomingGTIsByFunction.TryGetValue(function, out sgti))
                        maker.mapOrphanPGTs(sgti, oKV.Value);
                    else
                    {
                        ISet<GTS> e;
                        if (!orphanIncomingPGTsByFunction.TryGetValue(function, out e))
                            orphanIncomingPGTsByFunction[function] = e = new HashSet<GTS>();
                        e.UnionWith(oKV.Value);
                    }
                }

                foreach (var gfaKV in mgttiInfo.incomingGTIsByFunction)
                {
                    var function = gfaKV.Key;
                    var mgti = gfaKV.Value;
                    maker.gtis[mgti].gfas[function].Remove(mgtti);
                    maker.gtis[mgti].gfas[function].Add(gtti);
                    Debug.Assert(maker.gttis[gtti] == this);
                    int sgti;
                    if (incomingGTIsByFunction.TryGetValue(function, out sgti))
                    {
                        if (mgti != sgti)
                        {
                            maker.enqueueMergeGTI(sgti, mgti);
                            maker.gtis[mgti].gfas[gfaKV.Key].Remove(gtti);
                            #region consistency
#if DEBUG
                            foreach (var gtii in maker.gtis)
                                foreach (var gfa in gtii.Value.gfas)
                                    foreach (var sgtti in gfa.Value)
                                        Debug.Assert(maker.gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                            #endregion consistency
                        }
                    }else
                    {
                        incomingGTIsByFunction[function] = mgti;
                        maker.gtis[mgti].gfas[function].Remove(mgtti);
                        maker.gtis[mgti].gfas[function].Add(gtti);

                        #region consistency
#if DEBUG
                        foreach (var gtii in maker.gtis)
                            foreach (var gfa in gtii.Value.gfas)
                                foreach (var sgtti in gfa.Value)
                                    Debug.Assert(maker.gttis[sgtti].incomingGTIsByFunction[gfa.Key] == gtii.Key);
#endif
                        #endregion consistency

                        ISet<GTS> opgts;
                        if (orphanIncomingPGTsByFunction.TryGetValue(function, out opgts))
                            maker.mapOrphanPGTs(mgti, opgts);
                    }
                }
                Debug.Assert(check());
            }

            internal void completeIncomingFAs(ISet<GTTS> pgtts, ISet<GroundTupleEC> lgtts)
            {
                if (!pgtts.Any() || !lgtts.Any())
                    return;
                var rejectedFAs = new HashSet<Function>(from lgtt in lgtts from f in maker.universe.getGroundTupleRejectedGFAs(lgtt) select f);
                var incomingFAs = new HashSet<Function>(from lgtt in lgtts from f in maker.universe.groundTupleIncomingGroundFAsByFunction[lgtt].Keys select f);
                var fs = rejectedFAs.Union(incomingFAs);
                foreach (var f in fs)
                {
                    ISet<GTS> ppgts = maker.makePredecessorPGTs(f, pgtts, false);
                    foreach (var pgt in ppgts)
                    {
                        if (!maker.pgtToGTIMap.ContainsKey(pgt))
                        {
                            var laps = maker.getPGTLGTsAndPGTs(pgt);
                            int gti;
                            if (!incomingGTIsByFunction.TryGetValue(f, out gti))
                                gti = maker.mapNewGTI(laps, false);
                            else
                                maker.gtis[gti].add(laps);
                            maker.enqueueUpGTI(gti, laps);
                        }
                    }
                }

            }
        }
        private   class GTTINews
        {
            public readonly HashSet<GroundTupleEC> lgtts = new HashSet<GroundTupleEC>();
            public readonly HashSet<GTTS> pgtts = new HashSet<GTTS>();
        }
        #endregion classes

        #region members
        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        protected U universe;
        protected MT eTemplate;

        protected readonly IDictionary<int, GTIInfo> gtis = new Dictionary<int,GTIInfo>();
        protected readonly IDictionary<int, GTTIInfo> gttis = new Dictionary<int, GTTIInfo>();

        private readonly ISet<int> mergedGTIs = new HashSet<int>();

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private readonly IDictionary<string, int> gttKeyToGTTIMap = new Dictionary<string, int>();
        private readonly IDictionary<string, ISet<GTTS>> tupleKeyToOrphanPGTTMap = new Dictionary<string, ISet<GTTS>>();

        protected readonly IDictionary<GroundTermEC, int> lgtToGTIMap = new Dictionary<GroundTermEC, int>();
        protected readonly IDictionary<GroundTupleEC, int> lgttToGTTIMap = new Dictionary<GroundTupleEC, int>();
        protected readonly IDictionary<GTS, int> pgtToGTIMap = new Dictionary<GTS, int>();
        protected readonly IDictionary<GTTS, int> pgttToGTTIMap = new Dictionary<GTTS, int>();

        private readonly IDictionary<GTS, ISet<int>> ppgtToGTIs = new Dictionary<GTS, ISet<int>>();

        private readonly IDictionary<GTTS, IDictionary<GFAS, GTS>> ppgttToPPGTByPPGFA = new Dictionary<GTTS, IDictionary<GFAS, GTS>>();
        private readonly IDictionary<GTTS, ISet<int>> ppgttMissingTerms = new Dictionary<GTTS, ISet<int>>();
        private readonly IDictionary<GTS, IDictionary<GTTS, ISet<int>>> ppgtToPPGTTTerms = new Dictionary<GTS, IDictionary<GTTS, ISet<int>>>();

        ///////////////////////////////////////////////////////////
        private readonly Queue<int> todoUpGTIs = new Queue<int>();
        private readonly IDictionary<int, GTINews> gtiNewInfo = new Dictionary<int, GTINews>();
        private readonly Queue<int> todoUpGTTIs = new Queue<int>();
        private readonly IDictionary<int, GTTINews> gttiNewInfo = new Dictionary<int, GTTINews>();

        protected ISet<GTTS> pgttsToKeep = new HashSet<GTTS>();
        protected ISet<GTS> pgtsToKeep = new HashSet<GTS>();
        #endregion members

        #region index generation
        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private int lastTermIndex = 0;
        private int lastTupleIndex = -1;

        private int getTermIndex()
        {
            var result = lastTermIndex;
            lastTermIndex -= 2;
            return result;
        }
        private int getTupleIndex()
        {
            var result = lastTupleIndex;
            lastTupleIndex -= 2;
            return result;
        }
        #endregion index generation

        #region utilities
        private static void addMapSet<T, S>(IDictionary<T, ISet<S>> map, T key, S value)
        {
            ISet<S> e;
            if (!map.TryGetValue(key, out e))
                map[key] = e = new HashSet<S>();
//            Debug.Assert(!e.Contains(value));
            e.Add(value);
        }
        private static void addMapMap<A, B,C>(IDictionary<A, IDictionary<B,C>> map, A key1, B key2, C value)
        {
            IDictionary<B,C> e1;
            if (!map.TryGetValue(key1, out e1))
                map[key1] = e1 = new Dictionary<B, C>();
//            Debug.Assert(!e1.ContainsKey(key2));
            e1[key2] = value;
        }
        #endregion utilities

    }
}
