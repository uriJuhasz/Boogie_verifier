using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer
{
    using Programs.Expressions;
    using StateSpace.Types;
    namespace Analyzers.FOLConverter
    {
        using GC = CanonicalForms.GC;
        namespace ControlFlowGraph
        {
            using CanonicalForms;
            using Clauses;
            using Formulae;
            using CanonicalForms.TermRepositoryNS;
            public class CFG
            {
                #region instance creation
                public CFG(HistoryRecorder hr, ISRS srs)
                {
                    this.srs = srs;
                    rootNode = new Node(this, TruePredicate.get, false);
                    nodes.Add(rootNode);
                    this.hr = hr;
                }
                public readonly HistoryRecorder hr;
                #endregion instance creation

                #region construction
                public Node getOrAddNode(Predicate p, bool isGoal)
                {
                    Node n;

                    if (!nodeMap.TryGetValue(p, out n))
                    {
                        n = new Node(this, p, isGoal);
                        nodeMap[p] = n;
                        nodeMapS[p.ToString()] = n;
                        nodes.Add(n);
                        if (isGoal)
                            goalNodes.Add(n);
                    }
                    else
                        Debug.Assert(goalNodes.Contains(n) == isGoal);
                    Debug.Assert(n != null);
                    return n;
                }
                internal void addAxiom(Clause c)
                {
                    rootNode.addClause(c);
                }
                internal bool isPathAtom(Literal a)
                {
                    return a.f.isPredicateApplication && srs.isPathCondition(a.f.asPredicateApplication.predicate);
                }
                #endregion construction

                #region Nodes
                public readonly IDictionary<Function, Function> renameInverseMap = new Dictionary<Function, Function>();
                public class Node
                {
                    #region members
                    public readonly Predicate predicate;
                    public readonly List<Predicate> compressedPredicates = new List<Predicate>();
                    public readonly ISet<Node> predecessors = new HashSet<Node>();
                    public readonly ISet<Node> successors = new HashSet<Node>();

                    public readonly ISet<Clause> clauses = new HashSet<Clause>();
                    public readonly ISet<Literal> pathConditions = new HashSet<Literal>();

                    public int topoIndex;
                    public class ScopeInfo
                    {
                        public readonly IDictionary<Function, Function> renameMap = new Dictionary<Function, Function>();
                        public readonly ISet<Function> forwardConstants = new HashSet<Function>();
                        public readonly ISet<Function> newConstants = new HashSet<Function>();
                        public readonly ISet<Function> liveConstants = new HashSet<Function>();
                        private readonly ISet<Function> pConstants = new HashSet<Function>();
                        public IEnumerable<Function> constants { get { return pConstants; } }
                        //                    public readonly ISet<Function> constants = new HashSet<Function>();

                        public readonly ISet<Function> keyConstants = new HashSet<Function>();
                        public readonly ISet<Predicate> keyPredicates = new HashSet<Predicate>();
                        public bool add(Function c)
                        {
                            var r = pConstants.Add(c);
                            return r;
                        }
                        public void remove(Function c)
                        {
                            pConstants.Remove(c);
                        }
                        public void add(IEnumerable<Function> cs)
                        {
                            foreach (var c in cs)
                                add(c);
                        }

                    }
                    public readonly ScopeInfo scope = new ScopeInfo();
                    public bool inScope(Function c) { return scope.constants.Contains(c); }

                    public readonly ISet<ITerm> xtraGroundTerms = new HashSet<ITerm>();
                    public readonly ISet<ITerm> xtraGoalGroundTerms = new HashSet<ITerm>();

                    public int keyClass;
                    public bool isKeyNode = false;

                    #region DSA
                    public class DSAInfo
                    {
                        private Node n;

                        public DSAInfo(Node n)
                        {
                            this.n = n;
                        }
                        public readonly IDictionary<MapType, ISet<Function>> mapsByType = new Dictionary<MapType, ISet<Function>>();
                        public readonly ISet<Function> maps = new HashSet<Function>();
                        public readonly IDictionary<Function, ISet<Function>> definitelyAssignedMaps = new Dictionary<Function, ISet<Function>>();
                        public readonly IDictionary<Function, ISet<Function>> equalityMaps = new Dictionary<Function, ISet<Function>>();
                        public readonly IDictionary<Function, ISet<Function>> frameMaps = new Dictionary<Function, ISet<Function>>();

                        public readonly ISet<Function> assignedMaps = new HashSet<Function>();

                        public readonly ISet<FunctionApplicationFormula> groundMapTerms = new HashSet<FunctionApplicationFormula>();
                        public readonly ISet<FunctionApplicationFormula> groundMapGoalTerms = new HashSet<FunctionApplicationFormula>();

                        internal bool tryGetVariants(Function m, out ISet<Function> mapVariants)
                        {
                            mapVariants = new HashSet<Function>();
                            ISet<Function> e;
                            if (definitelyAssignedMaps.TryGetValue(m, out e))
                                mapVariants.UnionWith(e);
                            if (equalityMaps.TryGetValue(m, out e))
                                mapVariants.UnionWith(e);
                            if (frameMaps.TryGetValue(m, out e))
                                mapVariants.UnionWith(e);
                            return mapVariants.Any();
                        }
                        public readonly ISet<Function> intro = new HashSet<Function>();
                        public readonly ISet<Function> elim = new HashSet<Function>();
                        public readonly ISet<Function> transitUsed = new HashSet<Function>();
                        public readonly ISet<Function> transitUnused = new HashSet<Function>();
                        public readonly ISet<Function> temp = new HashSet<Function>();
                        public readonly ISet<Function> phi = new HashSet<Function>();
                        public readonly ISet<Function> incompletePhi = new HashSet<Function>();
                    }
                    public readonly DSAInfo dsa;

                    public readonly IDictionary<Function, ISet<Function>> dsaIntroAssignmentSources = new Dictionary<Function, ISet<Function>>();
                    public readonly IDictionary<Function, ISet<Function>> dsaIntroFrameSources = new Dictionary<Function, ISet<Function>>();
                    #endregion DSA

                    public readonly bool isGoal;
                    public bool isRefuted = false;
                    private Universe pUniverse = null;
                    public Universe universe { get { return pUniverse; } }
                    public void setUniverse(Universe u)
                    {
                        Debug.Assert(universe == null);
                        pUniverse = u;
                        cfg.universeToNodeMap[u] = this;
                    }
                    public void resetUniverse()
                    {
                        if (universe == null)
                            return;
                        cfg.universeToNodeMap.Remove(universe);
                        pUniverse = null;
                    }

                    public readonly CFG cfg;

                    private static int curIndex = 0;
                    public readonly int index;
                    #endregion members

                    #region instance creation
#if DEBUG
                    public static IDictionary<int, Node> m = new Dictionary<int, Node>();
                    public static void clean()
                    {
                        m.Clear();
                    }
#endif
                    public bool hasFrameRule = false;
                    public Node(CFG cfg, Predicate p, bool isGoal)
                    {
                        this.predicate = p;
                        this.isGoal = isGoal;
                        this.cfg = cfg;
                        this.index = curIndex;
                        curIndex++;
                        this.dsa = new DSAInfo(this);

#if DEBUG
                        m[index] = this;
#endif
                    }
                    #endregion instance creation

                    #region base
                    public bool inScope(ITerm t)
                    {
                        return t.constants.IsSubsetOf(scope.forwardConstants);
                    }
                    public override bool Equals(object obj)
                    {
                        return ReferenceEquals(this, obj);
                    }
                    public override int GetHashCode()
                    {
                        return index;
                    }
                    public override string ToString()
                    {
                        return predicate.ToString();// + " - [i:" + index.ToString() + "] - ti:" + topoIndex.ToString();
                    }
                    internal void addClause(Clause clause)
                    {
                        if (clause.isFalse)
                            isRefuted = true;
                        Debug.Assert(cfg.nodes.Contains(this));
                        clauses.Add(clause);
                        if (clause.literals.Count == 1)
                        {
                            var a = clause.literals.First();
                            if (cfg.isPathAtom(a))
                                pathConditions.Add(a);
                        }
                        scope.forwardConstants.UnionWith(clause.constants);
                    }

                    internal void addEdges(IEnumerable<Node> ps)
                    {
                        Debug.Assert(cfg.nodes.Contains(this));
                        Debug.Assert(ps.Any());
                        Debug.Assert(!predecessors.Any());
                        foreach (var p in ps)
                            //                {
                            addIncomingEdge(p);
                        //                    predecessors.Add(p);
                        //                    p.successors.Add(this);
                        //                }
                    }
                    internal void addIncomingEdge(Node p)
                    {
                        p.addOutgoingEdge(this);
                    }

                    internal void addOutgoingEdge(Node s)
                    {
                        Debug.Assert(cfg.nodes.Contains(this));
                        Debug.Assert(cfg.nodes.Contains(s));
                        successors.Add(s);
                        s.predecessors.Add(this);
                    }

                    internal void takeEdgeFrom(Node o, Node s)
                    {
                        Debug.Assert(cfg.nodes.Contains(this));
                        Debug.Assert(cfg.nodes.Contains(o));
                        Debug.Assert(cfg.nodes.Contains(s));
                        Debug.Assert(o.successors.Contains(s));
                        o.removeOutgoingEdge(s);
                        addOutgoingEdge(s);
                    }

                    internal void removeOutgoingEdge(Node s)
                    {
                        Debug.Assert(cfg.nodes.Contains(s));
                        Debug.Assert(successors.Contains(s));
                        Debug.Assert(s.predecessors.Contains(this));
                        successors.Remove(s);
                        s.predecessors.Remove(this);
                    }

                    internal void remove()
                    {
#if DEBUG
                        Debug.Assert(cfg.nodes.Contains(this));
                        Debug.Assert(successors.Count == 0);
                        Debug.Assert(predecessors.Count == 0);
                        Debug.Assert(isRefuted || (successors.Count == 0 && !isGoal));
#endif
                        cfg.nodes.Remove(this);
                        cfg.nodeMap.Remove(predicate);
                        cfg.nodeMapS.Remove(predicate.ToString());
                        if (isGoal)
                            cfg.goalNodes.Remove(this);
                        resetUniverse();
                    }
                    #endregion base

                    public bool isValid
                    {
                        get
                        {
                            {
                                return !isRefuted && universe != null && !universe.isRefuted;
                            }
                        }
                    }

                    internal IEnumerable<Function> getDSASources(Function m)
                    {
                        var result = new HashSet<Function>();
                        ISet<Function> temp;
                        if (dsaIntroAssignmentSources.TryGetValue(m, out temp))
                            result.UnionWith(temp);
                        if (dsaIntroFrameSources.TryGetValue(m, out temp))
                            result.UnionWith(temp);
                        return result;
                    }

                    public bool isUniverseMine { get { return universe != null && (predecessors.Count != 1 || predecessors.First().universe != universe); } }
                    public string refuteReason = null;
                    internal void refute(string why)
                    {
                        if (universe != null && !universe.isRefuted)
                            universe.refuteInt(why);
                        isRefuted = true;
                        refuteReason = universe!= null ? universe.refuteReason : why;
                        resetUniverse();
                    }
                }//class Node
                public IDictionary<Universe, Node> universeToNodeMap = new Dictionary<Universe, Node>();
                #endregion Nodes

                #region traversal
                public class VisitorProgress
                {
                    public readonly ISet<Node> refutedGoals = new HashSet<Node>();
                    public int numRefutedGoals { get { return refutedGoals.Count; } }
                    public readonly ISet<Node> processedGoals = new HashSet<Node>();
                    public void refutedGoal(Node n)
                    {
                        Debug.Assert(!refutedGoals.Contains(n));
#if DEBUG
                        Slicer.log(1,"+++++Refuted goal [{0,3}]{1,-50}{2}", n.index, n, n.universe != null ? "[" + n.universe + "]" : "");
#endif
                        processedGoals.Add(n);
                        refutedGoals.Add(n);
                    }
                }
                interface Visitor
                {
                    void apply(Node n);
                    void atEnd();
                    void refuted(Node n);
                }
                interface ForwardVisitor : Visitor
                {
                }
                interface BackwardVisitor : Visitor
                {
                }
                void applyForward(ForwardVisitor visitor, bool cleanUniverses)
                {
                    #region preconditions
                    Debug.Assert(invariant());
                    #endregion preconditions

                    Debug.Assert(nodes.All(n => n == rootNode || n.predecessors.Any()));
                    var todo = new Queue<Node>();
                    var todoGoals = new Queue<Node>();
                    todo.Enqueue(rootNode);
                    var done = new HashSet<Node>();
                    while (todoGoals.Any() || todo.Any())
                    {
                        var n = todoGoals.Count > 0 ?
                            todoGoals.Dequeue()
                                :
                            todo.Dequeue();
                        Debug.Assert(!done.Contains(n));
                        var nss = n.successors.ToList();
                        visitor.apply(n);
                        done.Add(n);

                        if (n.isRefuted && nodes.Contains(n))
                        {// && n.successors.Count == 0)
                            foreach (var s in n.successors.ToList())
                            {
                                Debug.Assert(nss.Contains(s));
                                n.removeOutgoingEdge(s);
                            }
                            n.remove();
                        }
                        #region clean
                        if (cleanUniverses)
                        {
                            foreach (var pn in n.predecessors.ToList())
                                if (pn.isRefuted || pn.universe.isRefuted)
                                {
                                    Debug.Assert(pn.successors.All(psn => done.Contains(psn) || todo.Contains(psn)));
                                    if (pn.successors.All(done.Contains))
                                    {
//                                        Console.WriteLine("      Removing refuted inner node {0}", pn);
                                        Debug.WriteLine("      Removing refuted inner node {0}", pn);
                                        foreach (var psn in pn.successors.ToList())
                                            pn.removeOutgoingEdge(psn);
                                        foreach (var ppn in pn.predecessors.ToList())
                                            ppn.removeOutgoingEdge(pn);
                                        pn.remove();
                                    }
                                }
                        }
                        #endregion clean

                        foreach (var sn in nss)
                            if (sn.predecessors.All(done.Contains))
                                if (sn.isGoal)
                                    todoGoals.Enqueue(sn);
                                else
                                    todo.Enqueue(sn);
                    }
                    Debug.Assert(goalNodes.All(done.Contains));


                    #region at end
                    visitor.atEnd();
                    #endregion sat eqs

                    #region postconditions
                    Debug.Assert(invariant());
                    #endregion postconditions
                }
                void applyBackwards(BackwardVisitor visitor)
                {
                    applyBackwards(visitor, goalNodes);
                }
                void applyBackwards(BackwardVisitor visitor, IEnumerable<Node> leaves)
                {
                    #region preconditions
                    Debug.Assert(invariant());
                    #endregion preconditions

                    var todo = new Queue<Node>();
                    foreach (var l in leaves)
                        todo.Enqueue(l);
                    var done = new HashSet<Node>();
                    while (todo.Any())
                    {
                        var n = todo.Dequeue();
                        Debug.Assert(!done.Contains(n));
                        //                        Debug.Assert(n.isValid);
                        var pps = n.predecessors.ToList();
                        if (n == rootNode || n.isGoal || (n.successors.Any() && n.predecessors.Any()))
                            visitor.apply(n);
                        else
                            n.refute(n.predecessors.Count == 0 ? "unreachable" : "useless");
                        done.Add(n);
                        foreach (var pn in pps)
                            if (pn.successors.All(sn => done.Contains(sn)))
                                todo.Enqueue(pn);
                        #region refuted cleanup
                        if (n.isRefuted && nodes.Contains(n))
                        {
                            visitor.refuted(n);
                            #region predecessors
                            foreach (var pn in pps)
                                if (pn.successors.Contains(n))
                                pn.removeOutgoingEdge(n);
                            #endregion predecessors
                            #region successors
                            var fQueue = new Queue<Node>();
                            foreach (var sn in n.successors.ToList())
                            {
                                n.removeOutgoingEdge(sn);
                                if (sn.predecessors.Count == 0)
                                    fQueue.Enqueue(sn);
                            }
                            while (fQueue.Count > 0)
                            {
                                var sn = fQueue.Dequeue();
                                Debug.Assert(sn != n);
                                sn.refute("unreachable");
                                visitor.refuted(sn);
                                #region logging
#if DEBUG
                                Console.WriteLine("++++++Trimmed infeasible {1} at {0}", sn, sn.isGoal ? "goal" : "node");
                                Debug.WriteLine("++++++Trimmed infeasible {1} at {0}", sn, sn.isGoal ? "goal" : "node");
#endif
                                #endregion logging
                                Debug.Assert(!sn.isValid);
                                var sns = sn.successors.ToList();
                                foreach (var snn in sns)
                                {
                                    snn.removeOutgoingEdge(sn);
                                    if (snn.predecessors.Count == 0)
                                    {
                                        snn.refute("unreachable");
                                        fQueue.Enqueue(sn);
                                    }
                                }
                                sn.remove();
                            }
                            #endregion successors
                            n.remove();
                        }
                        #endregion refuted cleanup
                    }
                    Debug.Assert(done.Contains(rootNode));

                    #region postconditions
                    Debug.Assert(invariant());
                    #endregion postconditions
                }
                public bool invariant()
                {
#if DEBUG
                    foreach (var n in nodes)
                    {
                        Debug.Assert(!n.isRefuted);
                        if (n.isGoal)
                            Debug.Assert(!n.successors.Any());
                        else
                            Debug.Assert(n == rootNode || n.successors.Any());
                        if (n != rootNode)
                            Debug.Assert(n.predecessors.Any());
                    }
#endif
                    return true;
                }
                #endregion traversal

                #region analyzers

                IDictionary<Node, IDictionary<string, bool>> calculateGASMap()
                {
                    var todo = new HashSet<Node>();
                    var result = new Dictionary<Node, IDictionary<string, bool>>();
                    todo.Add(rootNode);
                    var doneNodes = new HashSet<Node>();
                    while (todo.Count > 0)
                    {
                        var n = todo.First();
                        todo.Remove(n);
                        doneNodes.Add(n);
                        var sns = n.successors;

                        var map = result[n] = new Dictionary<string, bool>();
                        #region predecessors
                        if (n.predecessors.Count > 0)
                        {
                            Debug.Assert(n.predecessors.All(p => !p.isRefuted));
                            var predCommon = FU.intersection(from p in n.predecessors select result[p].Keys);
                            var firstPred = n.predecessors.First();
                            foreach (var l in predCommon)
                            {
                                Debug.Assert(!map.ContainsKey(l));
                                var polarity = result[firstPred][l];
                                if (n.predecessors.All(p => p == firstPred || result[p][l] == polarity))
                                    map[l] = polarity;
                            }
                        }
                        #endregion predecessors
                        var literalToClausesMap = new Dictionary<string, ISet<Clause>>();
                        foreach (var c in n.clauses)
                            if (c.freeVariables.Count == 0)
                            {
                                Debug.Assert(c.literals.Count > 0);
                                if (c.literals.Count == 1)
                                {
                                    var l = c.literals[0];
                                    var key = l.f.ToStringN();
                                    var polarity = l.polarity;
                                    bool op;
                                    if (map.TryGetValue(key, out op))
                                    {
                                        if (op != polarity)
                                        {
                                            n.refute(key + " holds in both polarities");
                                            sns = removeAndCleanupPP(n, result, doneNodes);
                                            goto nodeDone;
                                        }
                                    }
                                    else
                                    {
                                        map[key] = polarity;
                                    }
                                }
                                else
                                {
                                    foreach (var l in c.literals)
                                        literalToClausesMap.insert(l.f.ToStringN(), c);
                                }
                            }

                        var todoLiterals = new HashSet<string>(map.Keys.Intersect(literalToClausesMap.Keys));
                        while (todoLiterals.Count > 0)
                        {
                            var lKey = todoLiterals.First();
                            todoLiterals.Remove(lKey);
                            foreach (var c in literalToClausesMap[lKey])
                                if (n.clauses.Contains(c))
                                {
                                    var nls = new List<Literal>();
                                    foreach (var l2 in c.literals)
                                    {
                                        var l2key = l2.f.ToStringN();
                                        bool polarity;
                                        if (map.TryGetValue(l2key, out polarity))
                                        {
                                            if (polarity == l2.polarity)//subsumption
                                            {
                                                n.clauses.Remove(c);
                                                goto clauseDone;
                                            }
                                        }
                                        else
                                            nls.Add(l2);
                                    }
                                    Debug.Assert(nls.Count < c.literals.Count);
                                    if (nls.Count == 0)
                                    {
                                        sns = removeAndCleanupPP(n, result, doneNodes);
                                        goto nodeDone;
                                    }
                                    else if (nls.Count == 1)
                                    {
                                        var l2 = nls.First();
                                        var l2key = l2.f.ToStringN();
                                        Debug.Assert(!map.ContainsKey(l2key));
                                        map[l2key] = l2.polarity;
                                        if (literalToClausesMap.ContainsKey(l2key))
                                            todoLiterals.Add(l2key);

                                    }
                                    else
                                    {
                                        n.clauses.Remove(c);
                                        var nc = new Clause(nls);
                                        n.addClause(nc);
                                        foreach (var l in nls)
                                            literalToClausesMap.insert(l.f.ToStringN(), nc);
                                    }
                                    clauseDone:;
                                }
                        }
                        n.scope.forwardConstants.Clear();
                        n.scope.forwardConstants.UnionWith(from c in n.clauses from cc in c.constants select cc);

                        nodeDone:
                        foreach (var sn in sns)
                        {
                            Debug.Assert(sn.predecessors.Count > 0);
                            if (sn.predecessors.All(doneNodes.Contains))
                                todo.Add(sn);
                        }
                    }//while (todo.Count>0)

                    Debug.Assert(doneNodes.SetEquals(nodes));
                    return result;
                }

                private ISet<Node> removeAndCleanupPP(Node on, Dictionary<Node, IDictionary<string, bool>> result, HashSet<Node> doneNodes)
                {
                    var sns = new HashSet<Node>(on.successors);
                    foreach (var sn in sns)
                        on.removeOutgoingEdge(sn);

                    var todoBackwards = new HashSet<Node> { on };
                    while (todoBackwards.Count > 0)
                    {
                        var n = todoBackwards.First();
                        todoBackwards.Remove(n);
                        Debug.Assert(on.cfg.nodes.Contains(n));
                        n.refute("unit propagation");
#if DEBUG
                        if (n.isGoal)
                            Debug.WriteLine("+++PP refuted goal {0}", n);
                        else
                            Debug.WriteLine("+++PP infeasible {0}", n);
#endif
                        Debug.Assert(n.successors.Count == 0);
                        foreach (var p in n.predecessors.ToList())
                        {
                            p.removeOutgoingEdge(n);
                            if (p.successors.Count == 0 && !p.isGoal)
                                todoBackwards.Add(p);
                        }
                        n.remove();
                        doneNodes.Remove(n);
                    }

                    var todoForwards = new HashSet<Node>(from sn in sns where sn.predecessors.Count == 0 select sn);
                    while (todoForwards.Count > 0)
                    {
                        var n = todoForwards.First();
                        todoForwards.Remove(n);
                        Debug.Assert(on.cfg.nodes.Contains(n));
                        Debug.Assert(n.predecessors.Count == 0);
                        Debug.Assert(n != on.cfg.rootNode);
                        n.refute("unit propagation");
#if DEBUG
                        if (n.isGoal)
                            Debug.WriteLine("PP refuted goal {0}", n);
                        else
                            Debug.WriteLine("PP infeasible {0}", n);
#endif
                        var ssns = n.successors.ToList();
                        foreach (var ssn in ssns)
                        {
                            n.removeOutgoingEdge(ssn);
                            if (ssn.predecessors.Count == 0)
                            {
                                todoForwards.Add(ssn);
                                Debug.Assert(!doneNodes.Contains(ssn));
                            }
                        }
                        n.remove();
                        Debug.Assert(sns.Contains(n));
                        sns.Remove(n);
                        sns.UnionWith(ssns);
                    }
                    Debug.Assert(!on.cfg.nodes.Contains(on));
                    Debug.Assert(sns.All(on.cfg.nodes.Contains));
                    return sns;
                }

                void correlateBranches()
                {
                    if (nodes.Count == 0)
                        return;
                    var gasMap = calculateGASMap();

                    compressBasicBlocks(gasMap);

                    var todo = new Queue<Node>();
                    var done = new HashSet<Node>();
                    todo.Enqueue(rootNode);
                    while (todo.Count > 0)
                    {
                        var n = todo.Dequeue();
                        Debug.Assert(!done.Contains(n));
                        done.Add(n);
                        var ns = n.successors.ToList();
                        if (n.predecessors.Count == 2 && n.successors.Count == 2)
                        {
                            var units = new HashSet<Literal>(from c in n.clauses where c.literals.Count == 1 select c.literals.First());

                            var nothingNewInClauses =
                                units.Count == n.clauses.Count &&
                                n.predecessors.All(p => units.All(u => gasMap[p].ContainsKey(u.f.ToStringN())));
#if DEBUG
                            if (nothingNewInClauses)
                                foreach (var u in units)
                                    foreach (var p in n.predecessors)
                                        Debug.Assert(gasMap[p][u.f.ToStringN()] == u.polarity);
#endif

                            if (n.clauses.Count == 0 || nothingNewInClauses)
                            {
                                var p0 = n.predecessors.First();
                                var p1 = n.predecessors.Last();
                                var p0gasMap = gasMap[p0];  //getGASMap(p0);
                                var p1gasMap = gasMap[p1]; // getGASMap(p1);
                                var pOpposingKeys = getOpposingKeys(p0gasMap, p1gasMap);
                                if (pOpposingKeys.Count > 0)
                                {
                                    var s0 = n.successors.First();
                                    var s1 = n.successors.Last();
                                    var s0gasMap = gasMap[s0]; // getGASMap(s0);
                                    var s1gasMap = gasMap[s1]; // getGASMap(s1);
                                    var sOpposingKeys = getOpposingKeys(s0gasMap, s1gasMap);
                                    pOpposingKeys.IntersectWith(sOpposingKeys);
                                    if (pOpposingKeys.Count > 0)
                                    {
                                        var k = pOpposingKeys.First();
                                        Debug.Assert(p0gasMap[k] != p1gasMap[k]);
                                        Debug.Assert(s0gasMap[k] != s1gasMap[k]);
                                        if (p0gasMap[k] == s0gasMap[k])
                                        {
                                            p0.removeOutgoingEdge(n);
                                            p0.takeEdgeFrom(n, s0);
                                            p1.removeOutgoingEdge(n);
                                            p1.takeEdgeFrom(n, s1);
                                            n.remove();
                                        }
                                    }
                                }
                            }
                        }
                        foreach (var sn in ns)
                            if (sn.predecessors.All(spn => done.Contains(spn)))
                            {
                                Debug.Assert(!done.Contains(sn));
                                Debug.Assert(!todo.Contains(sn));
                                todo.Enqueue(sn);
                            }
                    }
                }

                private void compressBasicBlocks(IDictionary<Node, IDictionary<string, bool>> gasMap)
                {
                    var todo = new Queue<Node>();
                    var ldone = new HashSet<Node>();
                    todo.Enqueue(rootNode);
                    while (todo.Count > 0)
                    {
                        var n = todo.Dequeue();
                        Debug.Assert(!ldone.Contains(n));
                        ldone.Add(n);
                        var ps = n.predecessors;
                        var sns = n.successors.ToList();
                        if (!n.isGoal && ps.Count == 1)
                        {
                            var p = ps.First();
                            if (p.successors.Count == 1)
                            {
                                Debug.Assert(p.successors.First() == n);
                                compressBasicBlock(p, n);
                                var nMap = gasMap[n];
                                var pMap = gasMap[p];
                                foreach (var kv in nMap)
                                {
                                    bool op;
                                    if (pMap.TryGetValue(kv.Key, out op))
                                        Debug.Assert(op == kv.Value);
                                    else
                                        pMap[kv.Key] = kv.Value;
                                }

                                gasMap.Remove(n);
                            }
                        }
                        foreach (var sn in sns)
                        {
                            Debug.Assert(nodes.Contains(sn));
                            if (sn.predecessors.All(ldone.Contains))
                                todo.Enqueue(sn);
                        }
                    }
                }

                private ISet<string> getOpposingKeys(IDictionary<string, bool> p0gasMap, IDictionary<string, bool> p1gasMap)
                {
                    var result = new HashSet<string>();
                    foreach (var ga0KV in p0gasMap)
                    {
                        bool ga1p;
                        if (p1gasMap.TryGetValue(ga0KV.Key, out ga1p))
                            if (ga1p != ga0KV.Value)
                                result.Add(ga0KV.Key);
                    }
                    return result;
                }

                private IDictionary<string, bool> getGASMap(Node on)
                {
                    var result = new Dictionary<string, bool>();
                    var n = on;
                    while (true)
                    {
                        foreach (var c in n.clauses)
                            if (c.freeVariables.Count == 0 && c.literals.Count == 1)
                            {
                                var a = c.literals[0];
                                var key = a.f.ToStringN();
                                Debug.Assert(!result.ContainsKey(key) || result[key] == a.polarity);
                                result[key] = a.polarity;
                            }
                        if (n.predecessors.Count != 1)
                            break;
                        n = n.predecessors.First();
                    }
                    return result;
                }

                #region path conditions
                class PathConditionCalculator : ForwardVisitor
                {
                    public PathConditionCalculator(CFG cfg)
                    {
                        this.cfg = cfg;
                    }
                    public void atEnd() { }
                    private const string joinPredicateBaseName = "$join";
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        setPredPCs(n);

                        if (Universe.cascadeNJoinKnob)
                        {
                            if (n.predecessors.Count > 2)
                                cascadeNJoin(n);
                            Debug.Assert(n.predecessors.Count <= 2);
                        }
                    }

                    private void setPredPCs(Node n)
                    {
                        var predPCs = FU.intersection(from pn in n.predecessors select pn.pathConditions);
                        foreach (var predPC in predPCs)
                            n.addClause(new Clause(predPC));
                    }

                    private void cascadeNJoin(Node n)
                    {
                        Debug.Assert(n.predecessors.Count > 2);
                        var preds = n.predecessors.ToList();
                        foreach (var pred in preds)
                            pred.successors.Remove(n);
                        n.predecessors.Clear();
                        cascadeNJoinR(preds, n);
                        setPredPCs(n);
                    }
                    private Tuple<Predicate, ISet<Node>, ISet<Node>> splitOnTopPredicate(IEnumerable<Node> joinees, Node top)
                    {
                        Debug.Assert(joinees.Count() > 2);
                        var commonAtoms = FU.intersection(from j in joinees select j.pathConditions);
                        var commonPredicates = FU.intersection(from j in joinees select from pca in j.pathConditions where !commonAtoms.Contains(pca) select pca.f.asPredicateApplication.predicate);
                        if (!commonPredicates.Any())
                            return null;
                        if (commonPredicates.Count > 1)
                            Console.WriteLine("Warning: More than one predicate fully joined at {0} : {1}", top.predicate.nameN, Operator.commaSeparatedList(from p in commonPredicates select p.name));
                        var joinPredicate = commonPredicates.First();
                        var nps = new HashSet<Node>();
                        var nns = new HashSet<Node>();
                        foreach (var j in joinees)
                        {
                            Literal pca = null;
                            foreach (var a in j.pathConditions)
                                if (a.f.asPredicateApplication.predicate == joinPredicate)
                                {
                                    pca = a;
                                    break;
                                }
                            Debug.Assert(pca != null);
                            if (pca.polarity)
                                nps.Add(j);
                            else
                                nns.Add(j);
                        }
                        Debug.Assert(nps.Any());
                        Debug.Assert(nns.Any());
                        return new Tuple<Predicate, ISet<Node>, ISet<Node>>(joinPredicate, nns, nps);
                    }
                    private Node cascadeNJoinR(IEnumerable<Node> joinees, Node n)
                    {
                        Debug.Assert(joinees.Any());
                        if (joinees.Count() == 1)
                        {
                            Debug.Assert(n == null);
                            setPredPCs(joinees.First());
                            return joinees.First();
                        }
                        Debug.Assert(n == null || !n.predecessors.Any());
                        if (joinees.Count() == 2)
                        {
                            if (n == null)
                                n = cfg.getOrAddNode(cfg.srs.getFreshPredicate(joinPredicateBaseName + "_2", TypeTuple.make()), false);
                            n.addEdges(joinees);
                            setPredPCs(n);
                            return n;
                        }
                        var split = splitOnTopPredicate(joinees, n);
                        if (split == null)
                            return cascadeNJoinRandom(joinees, n);
                        else
                        {
                            if (n == null)
                                n = cfg.getOrAddNode(cfg.srs.getFreshPredicate(joinPredicateBaseName + "_" + split.Item1.name, TypeTuple.make()), false);
                            var positiveNode = cascadeNJoinR(split.Item2, null);
                            var negativeNode = cascadeNJoinR(split.Item3, null);
                            n.addEdges(new[] { positiveNode, negativeNode });
                            setPredPCs(n);
                            return n;
                        }
                    }
                    private Node cascadeNJoinRandom(IEnumerable<Node> ns, Node n)
                    {
                        Debug.Assert(ns.Any());
                        if (ns.Count() == 1)
                        {
                            Debug.Assert(n == null);
                            setPredPCs(ns.First());
                            return ns.First();
                        }

                        var nsc = ns.Count();
                        var left = cascadeNJoinRandom(ns.Take(nsc / 2), null);
                        var right = cascadeNJoinRandom(ns.Skip(nsc / 2), null);
                        if (n == null)
                        {
                            var npredicate = cfg.srs.getFreshPredicate(joinPredicateBaseName + "_random", TypeTuple.make());
                            n = cfg.getOrAddNode(npredicate, false);
                        }
                        else
                        {
                            Debug.Assert(!n.predecessors.Any());
                        }
                        n.addEdges(ns);
                        setPredPCs(n);
                        return n;
                    }

                    private readonly CFG cfg;
                }
                public void calculatePathConditions()
                {
                    applyForward(new PathConditionCalculator(this), false);
                }
                #endregion path conditions

                #region basic blocks
                public void compressBasicBlocks()
                {
                    applyForward(new BasicBlockCompressor(), false);
                }
                class BasicBlockCompressor : ForwardVisitor
                {
                    public void atEnd() { }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        if (!n.isGoal && n.predecessors.Count == 1)
                        {
                            var p = n.predecessors.First();
                            if (!p.isGoal && p.successors.Count == 1)
                            {
                                compressBasicBlock(p, n);
                            }
                        }
                        /*
                                        while (n.successors.Count==1)
                                        {
                                            var s = n.successors.First();
                                            if (s.predecessors.Count == 1 && !s.isGoal && !n.isGoal)
                                            {
                                                Debug.Assert(s.predecessors.First() == n);
                                                compressBasicBlock(n, s);
                                            }
                                            else
                                                break;
                                        }*/
                    }

                    private void compressBasicBlock(Node n, Node s)
                    {
                        n.cfg.compressBasicBlock(n, s);
                    }
                }
                internal void compressBasicBlock(Node n, Node s)
                {
                    Debug.Assert(nodes.Contains(n));
                    Debug.Assert(nodes.Contains(s));
                    Debug.Assert(n.successors.Count == 1);
                    Debug.Assert(n.successors.First() == s);
                    Debug.Assert(s.predecessors.Count == 1);
                    Debug.Assert(s.predecessors.First() == n);
                    Debug.Assert(!s.isGoal);
                    foreach (var c in s.clauses)
                        n.addClause(c);
                    n.removeOutgoingEdge(s);
                    Debug.Assert(n.successors.Count == 0);
                    foreach (var ss in s.successors.ToList())
                        n.takeEdgeFrom(s, ss);
                    s.remove();
                    foreach (var nn in n.successors)
                    {
                        Debug.Assert(!nn.predecessors.Contains(s));
                        Debug.Assert(nn.predecessors.Contains(n));
                        //                nn.predecessors.Remove(s);
                        //                nn.predecessors.Add(n);
                    }
                    foreach (var cp in new[] { s.predicate }.Concat(s.compressedPredicates))
                    {
                        n.compressedPredicates.Add(cp);
                        nodeMap[cp] = n;
                        nodeMapS[cp.ToString()] = n;
                    }
                }
                #endregion basic blocks

                #region forward variable scope
                class VariableForwardScopeCalculator : ForwardVisitor
                {
                    public void atEnd() { }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        n.scope.forwardConstants.UnionWith(from p in n.predecessors from c in p.scope.forwardConstants select c);
                        n.scope.forwardConstants.Add(n.cfg.srs.trueFunction);
                        n.scope.forwardConstants.Add(n.cfg.srs.falseFunction);
                        n.scope.newConstants.UnionWith(from v in n.scope.forwardConstants where !n.predecessors.Any(p => p.scope.forwardConstants.Contains(v)) select v);
#if DEBUG
                        foreach (var c in n.clauses)
                            foreach (var cc in c.constants)
                                Debug.Assert(n.scope.forwardConstants.Contains(cc));
#endif
                    }
                }

                public void calculateVariableForwardScope()
                {
                    applyForward(new VariableForwardScopeCalculator(), false);
                }
                #endregion forward variable scope

                #region live variables
                class LiveVariableCalculator : BackwardVisitor
                {
                    public void atEnd() { }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        n.scope.liveConstants.UnionWith(from cl in n.clauses from c in cl.constants select c);
                        n.scope.liveConstants.UnionWith(from s in n.successors from c in s.scope.liveConstants where n.scope.forwardConstants.Contains(c) select c);
                        //                    n.variableScope.UnionWith(from p in n.predecessors from c in p.variableScope select c);
                    }
                }

                public void calculateLiveVariables()
                {
                    if (!goalNodes.Any())
                        return;
                    applyBackwards(new LiveVariableCalculator());
                }
                #endregion live variables

                #region variable scope
                class VariableScopeCalculator : ForwardVisitor
                {
                    public void atEnd() { }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        var predKeys = new HashSet<Function>(from pn in n.predecessors from v in pn.scope.keyConstants select v);
                        var liveConstants = new HashSet<Function>((from sn in n.successors from v in sn.scope.liveConstants select v).Intersect(n.scope.forwardConstants));
                        n.scope.add(liveConstants);
                        n.scope.add(from v in n.scope.forwardConstants where n.cfg.srs.isNumber(v) select v);
                        n.scope.add(predKeys);
                        n.scope.add(from c in n.clauses from v in c.constants select v);

                        n.scope.keyConstants.UnionWith(predKeys);
                        n.scope.keyConstants.Add(n.cfg.srs.trueFunction);
                        n.scope.keyConstants.Add(n.cfg.srs.falseFunction);

                        var assignments = new Dictionary<Function, IList<ISet<Function>>>();
                        var equalities = new Dictionary<Function, ISet<Function>>();

                        #region assignments
                        foreach (var c in n.clauses)
                        {
                            if (c.literals.Count > 1)
                                continue;
                            var a = c.literals.First();
                            if (!a.f.isEquality || !a.polarity || !a.isGround)
                                continue;
                            var eq = a.f.asEquality;
                            var t1fa = eq.t1 as FunctionApplicationFormula;
                            var t2fa = eq.t2 as FunctionApplicationFormula;
                            if (t1fa != null && t2fa != null)
                            {
                                var f1 = t1fa.function;
                                var f2 = t2fa.function;
                                if ((f2.isConstant && !f1.isConstant)/* ||(f1.isConstant && f2.isConstant && predKeys.Contains(f1))*/)
                                {
                                    Universe.swap(ref t1fa, ref t2fa);
                                    Universe.swap(ref f1, ref f2);
                                }
                                if (f1.isConstant)
                                {
                                    if (f2.isConstant)
                                    {
                                        addEquality(equalities, f1, f2);
                                    }
                                    else
                                    {
                                        addAssignment(assignments, f1, t2fa);
                                    }
                                }
                            }

                        }
                        #endregion assignments

                        var coveredConstants = new HashSet<Function>();
                        var newConstants = new HashSet<Function>(n.scope.constants.Except(FU.intersection(from pn in n.predecessors select pn.scope.constants)));
                        var predConstants = new HashSet<Function>(FU.intersection(from pn in n.predecessors select pn.scope.constants.Intersect(n.scope.constants)));
                        coveredConstants.UnionWith(predConstants);
                        coveredConstants.Add(n.cfg.srs.trueFunction);
                        coveredConstants.Add(n.cfg.srs.falseFunction);
                        var potentialKeys = new HashSet<Function>(newConstants.Except(coveredConstants));
                        foreach (var f in potentialKeys.ToList())
                            if (potentialKeys.Contains(f))
                            {
                                if (n.cfg.srs.isNumber(f) ||
                                    (predKeys.Contains(f) || !newConstants.Contains(f)) ||
                                    (!equalities.ContainsKey(f) && !assignments.ContainsKey(f)))
                                    addKey(n.scope.keyConstants, coveredConstants, equalities, assignments, potentialKeys, f);
                            }

                        n.scope.keyConstants.UnionWith(predKeys);
                        foreach (var eq in equalities.ToList())
                            if (equalities.ContainsKey(eq.Key))
                            {
                                var v = eq.Key;
                                if (coveredConstants.Contains(v))
                                {
                                    var v2s = eq.Value;
                                    coveredConstants.UnionWith(v2s);
                                    potentialKeys.ExceptWith(v2s);
                                    foreach (var v2 in v2s)
                                        equalities.Remove(v2);
                                }
                            }

                        foreach (var eq in equalities.ToList())
                            if (equalities.ContainsKey(eq.Key))
                            {
                                var vs = eq.Value;
                                if (!vs.Intersect(assignments.Keys).Any())
                                {
                                    Debug.Assert(vs.Count > 1);
                                    Debug.Assert(vs.All(potentialKeys.Contains));
                                    //select arbitrary rep - todo last/first to die
                                    var rep = FU.min(vs, (f, g) => f.nameN.CompareTo(g.nameN));// .Min((f) => f.nameN);
                                    addKey(n.scope.keyConstants, coveredConstants, equalities, assignments, potentialKeys, rep);
                                }
                            }

                        var assignmentBackDep = new Dictionary<Function, ISet<Function>>();
                        foreach (var a in assignments)
                            foreach (var fa in a.Value)
                                foreach (var f2 in fa)
                                    assignmentBackDep.insert(f2, a.Key);


                        {
                            var todo = new HashSet<Function>(assignments.Keys);
                            while (todo.Count > 0)
                            {
                                var f = todo.First();
                                todo.Remove(f);
                                Debug.Assert(assignments.ContainsKey(f));
                                var sources = assignments[f];
                                foreach (var s in sources)
                                {
                                    s.ExceptWith(coveredConstants);
                                    if (s.Count == 0)
                                    {
                                        coveredConstants.Add(f);
                                        potentialKeys.Remove(f);
                                        assignments.Remove(f);
                                        ISet<Function> eqs;
                                        if (equalities.TryGetValue(f, out eqs))
                                        {
                                            coveredConstants.UnionWith(eqs);
                                            potentialKeys.ExceptWith(eqs);
                                            foreach (var eq in eqs)
                                                equalities.Remove(eq);
                                        }

                                        ISet<Function> bds;
                                        if (assignmentBackDep.TryGetValue(f, out bds))
                                        {
                                            assignmentBackDep.Remove(f);
                                            foreach (var bd in bds)
                                                if (assignments.ContainsKey(bd))
                                                    todo.Add(bd);
                                        }
                                        goto done;
                                    }
                                }
                                done:;
                            }
                        }

#if DEBUG
                        foreach (var kv in assignments)
                            foreach (var fa in kv.Value)
                                foreach (var f in fa)
                                {
                                    Debug.Assert(potentialKeys.Contains(f));
                                    Debug.Assert(assignments.ContainsKey(f) || equalities.Keys.Contains(f));
                                }
                        Debug.Assert(assignments.Count > 0 || equalities.Count == 0);
#endif
                        if (assignments.Count > 0)
                        {
                            var dgraph = new Dictionary<Function, ISet<Function>>();
                            foreach (var kv in assignments)
                                foreach (var fa in kv.Value)
                                    foreach (var f2 in fa)
                                        dgraph.insert(kv.Key, f2);
                        }
                        n.scope.keyConstants.UnionWith(potentialKeys);
                        var redundantConstants = new HashSet<Function>(n.scope.constants.Except(n.scope.keyConstants));
                    }//apply

                    private void addKey(
                        ISet<Function> keyConstantScope,
                        ISet<Function> coveredConstants,
                        IDictionary<Function, ISet<Function>> equalities,
                        IDictionary<Function, IList<ISet<Function>>> assignments,
                        ISet<Function> potentialKeys,
                        Function c)
                    {
                        Debug.Assert(potentialKeys.Contains(c));
                        Debug.Assert(!coveredConstants.Contains(c));
                        ISet<Function> s;
                        if (!equalities.TryGetValue(c, out s))
                            s = new HashSet<Function> { c };
                        Debug.Assert(s.Contains(c));
                        keyConstantScope.Add(c);
                        potentialKeys.ExceptWith(s);
                        coveredConstants.UnionWith(s);
                        foreach (var c2 in s)
                        {
                            equalities.Remove(c2);
                            assignments.Remove(c2);
                        }
                    }

                    private void addAssignment(IDictionary<Function, IList<ISet<Function>>> assignments, Function f1, FunctionApplicationFormula t2fa)
                    {
                        IList<ISet<Function>> e;
                        if (!assignments.TryGetValue(f1, out e))
                            assignments[f1] = e = new List<ISet<Function>>();
                        e.Add(new HashSet<Function>(t2fa.constants));
                    }

                    private void addEquality(IDictionary<Function, ISet<Function>> equalities, Function f1, Function f2)
                    {
                        ISet<Function> s;
                        if (equalities.TryGetValue(f1, out s))
                        {
                            ISet<Function> s2;
                            if (equalities.TryGetValue(f2, out s2))
                            {
                                s.UnionWith(s2);
                                foreach (var f in s2)
                                    equalities[f] = s;
                            }
                            else
                            {
                                s.Add(f2);
                                equalities[f2] = s;
                            }
                        }
                        else if (equalities.TryGetValue(f2, out s))
                        {
                            s.Add(f1);
                            equalities[f1] = s;
                        }
                        else
                        {
                            s = new HashSet<Function> { f1, f2 };
                            equalities[f1] = s;
                            equalities[f2] = s;
                        }
                    }
                }

                public void calculateVariableScope()
                {
                    applyForward(new VariableScopeCalculator(), false);
                }
                #endregion variable scope

                #region variable order
                private class VariableOrderCalculator1 : ForwardVisitor
                {
                    //                public readonly IDictionary<Function, ISet<Function>> earlierThan = new Dictionary<Function, ISet<Function>>();
                    //                public readonly IDictionary<Function, ISet<Function>> laterThan = new Dictionary<Function, ISet<Function>>();
                    public readonly IDictionary<Function, ISet<Node>> beginsAt = new Dictionary<Function, ISet<Node>>();
                    public readonly IDictionary<Function, ISet<Node>> endsFullyAt = new Dictionary<Function, ISet<Node>>();
                    public readonly IDictionary<Function, ISet<Node>> endsPartiallyAt = new Dictionary<Function, ISet<Node>>();
                    public readonly IDictionary<Function, ISet<Node>> deadEndsAt = new Dictionary<Function, ISet<Node>>();

                    public readonly IDictionary<Node, ISet<Node>> branch2Join = new Dictionary<Node, ISet<Node>>();
                    public readonly IDictionary<Node, Node> join2Branch = new Dictionary<Node, Node>();

                    public VariableOrderCalculator1(CFG cfg)
                    {
                        this.cfg = cfg;
                    }
                    public readonly CFG cfg;

                    public class NodeTopoComp : Comparer<Node>
                    {
                        public override int Compare(Node n1, Node n2)
                        {
                            return n1.topoIndex - n2.topoIndex;
                        }

                        private static NodeTopoComp instance = new NodeTopoComp();
                        private NodeTopoComp() { }
                        public static NodeTopoComp get
                        {
                            get
                            {
                                return instance;
                            }
                        }
                    }
                    public void atEnd()
                    {
                        var allConstants = new HashSet<Function>(from n in cfg.nodes from c in n.scope.constants select c);
                        Debug.Assert(beginsAt.Count == allConstants.Count);
                        var preConstants = allConstants.Count;

                        Slicer.log(2, "   Ordering massage - constants {0}", allConstants.Count);
                        #region branch join maps
                        foreach (var jn in cfg.nodes)
                            if (jn.predecessors.Count==2)
                            {
                                var todo = new SortedSet<Node>(NodeTopoComp.get);
                                todo.Add(jn);
                                var done = new HashSet<Node>();
                                while (todo.Any())
                                {
                                    var n = todo.Last();
                                    todo.Remove(n);
                                    if (n!=jn && !todo.Any())
                                    {
                                        var bn = n;
                                        Debug.Assert(!join2Branch.ContainsKey(jn));
//                                        Debug.Assert(!branch2Join.ContainsKey(bn));
                                        join2Branch[jn] = bn;
                                        branch2Join.insert(bn, jn);
                                        break;
                                    }
                                    foreach (var pn in n.predecessors)
                                        todo.Add(pn);
                                }
                            }

                            
                        #endregion branch join maps

                        #region consistency
                        checkBranchJoinScopeConsistency();
                        #endregion

                        var todoCs = new HashSet<Function>(beginsAt.Keys);
                        while (todoCs.Count > 0)
                        {
                            var c = todoCs.First();
                            todoCs.Remove(c);

                            if (isTheoryConstant(c))
                                continue;

                            #region begins at
                            var ba = beginsAt[c].ToArray();
                            #region consistency
#if DEBUG
                            foreach (var n in ba)
                            {
                                Debug.Assert(n.inScope(c));
                                foreach (var pn in n.predecessors)
                                    Debug.Assert(!pn.inScope(c));
                            }
#endif
                            #endregion
                            if (ba.Length > 1)
                            {
                                var scopeA = (from a in ba select new HashSet<Node>()).ToArray();
                                for (var i = 0; i < ba.Length; i++)
                                {
                                    var todo = new SortedSet<Node>(NodeTopoComp.get);
                                    todo.Add(ba[i]);
                                    while (todo.Count > 0)
                                    {
                                        var n = todo.Min;
                                        todo.Remove(n);
                                        Debug.Assert(todo.All(tn => tn.topoIndex > n.topoIndex));
                                        scopeA[i].Add(n);
                                        Debug.Assert(n.inScope(c));
                                        foreach (var sn in n.successors)
                                            if (sn.inScope(c))
                                                todo.Add(sn);
                                    }
                                }
                                #region calculate commonWith netScope baLastNet
                                var commonWith = (from s in scopeA select new HashSet<int>()).ToArray();
                                var netScope = (from a in scopeA select new HashSet<Node>(a)).ToArray();
                                var baLastNet = new Node[ba.Length];
                                for (var i = 0; i < ba.Length; i++)
                                    netScope[i] = new HashSet<Node>(scopeA[i]);
                                for (var i = 0; i < ba.Length; i++)
                                    for (var j = i + 1; j < ba.Length; j++)
                                    {
                                        var inter = new HashSet<Node>(scopeA[i].Intersect(scopeA[j]));
                                        if (inter.Count > 0)
                                        {
                                            commonWith[i].Add(j);
                                            commonWith[j].Add(i);
                                        }
                                        netScope[i].ExceptWith(scopeA[j]);
                                        netScope[j].ExceptWith(scopeA[i]);
                                    }
                                for (var i = 0; i < ba.Length; i++)
                                    if (commonWith[i].Count > 0)
                                    {
                                        var outG = (from n in netScope[i] where n.successors.Count > 0 where n.successors.Any(sn => sn.inScope(c) && !netScope[i].Contains(sn)) select n);
                                        Debug.Assert(outG.Count() == 1);
                                        var on = outG.First();
                                        baLastNet[i] = on;
                                        Debug.Assert(on.successors.Count == 1 && scopeA[i].Contains(on.successors.First()));
                                    }///rename all to outG
                                #endregion

                                #region loners
                                {
                                    var loners = new HashSet<int>();
                                    for (var i = 0; i < commonWith.Length; i++)
                                        if (commonWith[i].Count == 0)
                                            loners.Add(i);
                                    #region choose longest loner and rename others
                                    if (loners.Count > 0)
                                    {
                                        var lonersToChange = new HashSet<int>(loners);
                                        int longestLoner = lonersToChange.First();
                                        foreach (var ll in loners)
                                            if (netScope[ll].Count > netScope[longestLoner].Count)
                                                longestLoner = ll;
                                        if (lonersToChange.Count == ba.Length)
                                            lonersToChange.Remove(longestLoner);
                                        foreach (var l in lonersToChange)
                                        {
                                            var nc = renameFull(c, ba[l]);
                                            todoCs.Add(nc);
                                        }
                                    }
                                    #endregion

                                    var numLoners = loners.Count;
                                    var numJoined = commonWith.Length - numLoners;
                                    if (numJoined > 0)
                                    {
                                        var problem = false;
                                        for (var i = 0; i < commonWith.Length; i++)
                                            if (commonWith[i].Count > 0 && (commonWith[i].Count != numJoined - 1))
                                                problem = true;
                                        if (problem)
                                            Debugger.Break();
                                        var joined = new HashSet<int>(from i in Enumerable.Range(0, ba.Length) where commonWith[i].Count > 0 select i);
                                        var ijMap = new SortedDictionary<Node, ISet<Node>>(NodeTopoComp.get);
                                        foreach (var i in joined)
                                        {
                                            Debug.Assert(baLastNet[i].successors.Count == 1);
                                            ijMap.insert(baLastNet[i].successors.First(), baLastNet[i]);// ba[i]);
                                        }
                                        Node topJ;
                                        var joins = new HashSet<Node>();
                                        while (ijMap.Count > 1)
                                        {
                                            foreach (var kv in ijMap.ToList())
                                            {
                                                if (kv.Value.Count == 2)
                                                {
                                                    var jn = kv.Key;
                                                    var pns = kv.Value;
                                                    joins.Add(jn);
                                                    Debug.Assert(pns.Count == 2);
                                                    Debug.Assert(pns.SetEquals(jn.predecessors));
                                                    ijMap.Remove(jn);
                                                    if (ijMap.Count > 1)
                                                    {
                                                        Debug.Assert(jn.successors.Count == 1);
                                                        if (jn.successors.Any())//fcuk
                                                        {
                                                            //                                                            ijMap.insert(jn.successors.First(), jn);
                                                            ijMap.insert(jn.successors.First(), jn);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        Debug.Assert(ijMap.Count == 1);
                                        topJ = ijMap.Keys.First();
                                        #region consistency
#if DEBUG
                                        foreach (var jn in joins)
                                            if (jn != topJ)
                                            {
                                                Debug.Assert(jn.scope.newConstants.Count == 0);
                                                foreach (var cc in jn.clauses)
                                                    foreach (var l in cc.literals)
                                                        if (l.f.isPredicateApplication)
                                                            Debug.Assert(cfg.srs.isPathCondition(l.f.asPredicateApplication.predicate));
                                                        else
                                                            Debug.Assert(l.f.asEquality.args.All(fae => fae.isFunctionApplication && fae.asFunctionApplication.function.isConstant));
                                            }
#endif
                                        #endregion 

                                        if (joined.Count > 1)
                                        {
                                            foreach (var jni in joined)
                                            {
                                                if (netScope[jni].Count > 1)
                                                {
                                                    var nc = renameToFirstJoin(c, ba[jni]);
                                                    todoCs.Add(nc);
                                                }
                                            }
                                        }
                                    }

                                }
                                #endregion
                            }//if (ba.Length > 1)
                            #endregion begins

                        }//while (todoCs.Count > 0)


                        #region consistency
                        checkBranchJoinScopeConsistency();
                        #endregion

                        var todoBNs = new SortedSet<Node>(NodeTopoComp.get);
                        todoBNs.UnionWith(from n in cfg.nodes where n.successors.Count > 1 select n); // == 2 select n);
                        while (todoBNs.Count > 0)
                        {
                            var bn = todoBNs.Max;
                            todoBNs.Remove(bn);
                            var sns = bn.successors.ToArray();
                            var gsns = new List<Node>(from sn in sns where sn.isGoal select sn);
                            var nsns = new List<Node>(from sn in sns where !sn.isGoal select sn);
                            Debug.Assert(!branch2Join.ContainsKey(bn) || (nsns.Count==2 && gsns.Count==0));
                            Debug.Assert(nsns.Count <2 || gsns.Count==0);
                            Debug.Assert(nsns.Count <= 2);
                            /*                            var sn0 = sns.First();
                                                        var sn1 = sns.Last();
                                                        var common0 = new HashSet<Function>(from c in sn0.scope.constants.Intersect(bn.scope.constants) where !isTheoryConstant(c) select c);
                                                        var common1 = new HashSet<Function>(from c in sn1.scope.constants.Intersect(bn.scope.constants) where !isTheoryConstant(c) select c);
                            */
                            var commonsA = (
                                from sn in sns select new HashSet<Function>(
                                    from c in sn.scope.constants.Intersect(bn.scope.constants)
                                    where !isTheoryConstant(c)
                                    select c)).ToArray();
                            var nis = Enumerable.Range(0, bn.successors.Count);
                            var atJoin = new HashSet<Function>();

                            var jns = branch2Join.getOrEmpty(bn);
                            if (jns.Any())
                            {
                                atJoin.UnionWith(FU.intersection(from jn in jns select jn.scope.constants));
                            }
                            var commonAll = FU.union(commonsA);
                            foreach (var i in nis)
                            {
                                var sn = sns[i];
                                var common = commonsA[i];
                                foreach (var c in commonAll.Except(sn.scope.constants))
                                    addToScopeAfterBranch(bn, sn, c);
                                if (sn.successors.Any() && nsns.Count == 2)
                                    foreach (var c in common.Except(atJoin))
                                    {
                                        if (sn.successors.Any(ssn => ssn.inScope(c)))
                                        {
//                                            Console.WriteLine("renameFrom({0},{1})", c.name, sn.ToString());
                                            renameFrom(c, sn);
                                        }
                                    }
                            }
//                            common0.ExceptWith(atJoin);
//                            common1.ExceptWith(atJoin);
/*                            var missing0 = new HashSet<Function>(common1.Except(common0));
                            var missing1 = new HashSet<Function>(common0.Except(common1));
                            {
                                foreach (var c2 in missing0)
                                    addToScopeAfterBranch(bn, sn0, c2);
                                foreach (var c2 in missing1)
                                    addToScopeAfterBranch(bn, sn1, c2);
                                if (!sn1.isGoal)
                                    foreach (var c2 in common0)
                                        if (sn0.successors.Any(ssn => ssn.inScope(c2)))
                                            renameFrom(c2, sn0);
                                if (!sn0.isGoal)
                                    foreach (var c2 in common1)
                                        if (sn1.successors.Any(ssn => ssn.inScope(c2)))
                                            renameFrom(c2, sn1);
                            }*/
                        }

                        #region consistency
                        checkBranchJoinScopeConsistency();
                        #endregion

                        #region consistency
#if DEBUG
                        foreach (var n in cfg.nodes)
                        {
                            foreach (var cc in n.clauses)
                                foreach (var c in cc.constants)
                                    Debug.Assert(n.inScope(c));
                            foreach (var c in n.scope.constants)
                                if (!isTheoryConstant(c))
                                {
                                    if (n.successors.Count == 0)
                                        Debug.Assert(deadEndsAt[c].Contains(n));
                                    else
                                        if (n.successors.All(sn => !sn.inScope(c)))
                                        Debug.Assert(endsFullyAt[c].Contains(n));
                                    else
                                        Debug.Assert(n.successors.All(sn => sn.inScope(c)));
                                    if (!n.predecessors.Any(pn => pn.inScope(c)))
                                        Debug.Assert(beginsAt[c].Contains(n));

                                    if (n.successors.Count == 2)
                                    {
                                        var sn0 = n.successors.First();
                                        var sn1 = n.successors.Last();
#if DEBUG
                                        var s0 = sn0.scope.constants.Intersect(n.scope.constants);
                                        var s1 = sn1.scope.constants.Intersect(n.scope.constants);
                                        var diff1 = s1.Except(s0);
                                        var diff2 = s0.Except(s1);
                                        Debug.Assert(!diff1.Any());// new HashSet<Function>(sn0.scope.constants.Intersect(n.scope.constants)).SetEquals(sn1.scope.constants.Intersect(n.scope.constants)));
                                        Debug.Assert(!diff2.Any());
#endif
                                    }
                                }
                        }
                        foreach (var c in beginsAt.Keys)
                            if (!isTheoryConstant(c))
                            {
                                foreach (var bn in beginsAt[c])
                                    Debug.Assert(bn.inScope(c) && bn.predecessors.All(pn => !pn.inScope(c)));
                                if (beginsAt[c].Count > 1)
                                {
                                    var tc = new SortedSet<Node>(NodeTopoComp.get);
                                    tc.UnionWith(beginsAt[c]);
                                    while (tc.Count > 1)
                                    {
                                        var n = tc.Min;
                                        tc.Remove(n);
                                        Debug.Assert(n.inScope(c));
                                        Debug.Assert(tc.All(tn => tn.topoIndex > n.topoIndex));
                                        Debug.Assert(n.successors.Count == 1);
                                        var fsn = n.successors.First();
                                        Debug.Assert(fsn.inScope(c));
                                        Debug.Assert(fsn.predecessors.Count == 2);
                                        Debug.Assert(fsn.predecessors.All(pn => pn.inScope(c)));
                                        //                                Debug.Assert((tc.Count == 1 && tc.Contains(fsn)) || fsn.scope.newConstants.Count == 0);
                                        tc.Add(fsn);
                                    }
                                }
                                var rens = new HashSet<Node>();
                                if (deadEndsAt.ContainsKey(c))
                                    foreach (var den in deadEndsAt[c])
                                        Debug.Assert(den.inScope(c) && den.successors.Count == 0);
                                if (endsFullyAt.ContainsKey(c))
                                {
                                    var efa = endsFullyAt[c];
                                    Debug.Assert(efa.Count <= 2);
                                    foreach (var en in efa)
                                    {
                                        Debug.Assert(en.inScope(c) && en.successors.All(sn => !sn.inScope(c)));
                                        rens.Add(en);
                                    }
                                    if (efa.Count == 2)
                                    {
                                        Debug.Assert(efa.All(nn => nn.predecessors.Count == 1));
                                        Debug.Assert(efa.First().predecessors.First() == efa.Last().predecessors.First());
                                    }
                                }
                                Debug.Assert(!endsPartiallyAt.ContainsKey(c));
                                Debug.Assert(rens.Count == 1 || rens.Count == 2 || deadEndsAt[c].Count > 0);
                            }
#endif
                        #endregion consistency

                        #region order constraints
                        var earlierThan = new Dictionary<Function, ISet<Function>>();
                        var laterThan = new Dictionary<Function, ISet<Function>>();
                        foreach (var c in beginsAt.Keys)
                        {
                            if (isTheoryConstant(c))
                                continue;
                            if (endsPartiallyAt.ContainsKey(c) || endsFullyAt.ContainsKey(c))
                            {
                                var en = (endsPartiallyAt.ContainsKey(c) ? endsPartiallyAt[c].First() : endsFullyAt[c].First());
                                foreach (var sn in en.successors)
                                    if (!sn.inScope(c))
                                        foreach (var c2 in sn.scope.constants.Intersect(en.scope.constants))
                                            if (!isTheoryConstant(c2))
                                            {
                                                earlierThan.insert(c, c2);
                                                laterThan.insert(c2, c);
                                            }
                            }
                        }
                        #endregion order constraints

                        #region layers
                        allConstants = new HashSet<Function>(beginsAt.Keys);
                        var layers = new List<ISet<Function>>();
                        //                    var cyclicLayers = new HashSet<int>();
                        var assignedConstants = new HashSet<Function>();

                        //                    var DSAJoin = new Dictionary<Function, Node>();
                        var firstLayer = new HashSet<Function>();
                        var waitingFor = new Dictionary<Function, ISet<Function>>();

                        firstLayer = new HashSet<Function>(allConstants.Except(earlierThan.Keys));
                        foreach (var kv in earlierThan)
                            waitingFor[kv.Key] = new HashSet<Function>(kv.Value);

                        var curLayer = firstLayer;
                        var constantLayer = new Dictionary<Function, int>();
                        firstLayer.UnionWith(from c in allConstants where isTheoryConstant(c) select c);
                        while (curLayer.Count > 0)
                        {
                            layers.Add(curLayer);
                            var cc = curLayer;
                            curLayer = new HashSet<Function>();
                            foreach (var c in cc)
                            {
                                Debug.Assert(!waitingFor.ContainsKey(c));
                                Debug.Assert(!constantLayer.ContainsKey(c));
                                constantLayer[c] = layers.Count - 1;
                            }
                            assignedConstants.UnionWith(cc);
                            foreach (var c in cc)
                            {
                                ISet<Function> m1;
                                if (laterThan.TryGetValue(c, out m1))
                                    foreach (var c2 in m1)
                                    {
                                        var m = waitingFor[c2];
                                        Debug.Assert(m.Contains(c));
                                        m.Remove(c);
                                        if (m.Count == 0)
                                        {
                                            curLayer.Add(c2);
                                            waitingFor.Remove(c2);
                                        }
                                    }
                            }
                        }//while (curLayer.Count>0)
                        Debug.Assert(waitingFor.Count == 0);
                        Debug.Assert(allConstants.SetEquals(assignedConstants));
                        Debug.Assert(allConstants.SetEquals(constantLayer.Keys));
                        #endregion layers

                        #region awkward functions
                        var functionTKBOMap = new Dictionary<Function, SimpleTKBO>();
                        {//TODO - abstract away C[f(s)] => X!= f(s) \/ C[X] and make f TKBO large
                            #region L functions
                            var potentialLFunctions = new HashSet<Function>(
                                from n in cfg.nodes
                                from c in n.clauses
                                from l in c.literals
                                where l.polarity && l.f.isEquality
                                let eq = l.f.asEquality
                                from tt in eq.args
                                where (tt.isFunctionApplication)
                                let fa = tt.asFunctionApplication
                                select fa.function
                                );
                            #endregion
                            #region L types
                            var potentialLVTypes = new HashSet<IType>();
                            foreach (var n in cfg.nodes)
                                foreach (var c in n.clauses)
                                    foreach (var l in c.literals)
                                        if (l.polarity && l.f.isEquality)
                                            foreach (var tt in l.f.asEquality.args)
                                                if (tt.isVariable)
                                                {
                                                    var eq = l.f.asEquality;
                                                    var v = tt.asVariable.variable;
                                                    if (eq.args.All(a => ReferenceEquals(a, tt) || !a.freeVariables.Contains(v)))
                                                        if ((c.literals.All(l2 => ReferenceEquals(l, l2) || !l2.freeVariables.Contains(v) || (l2.f.isEquality && l2.polarity && l2.f.asEquality.args.All(a2 => !a2.freeVariables.Contains(v) || a2.isVariable)))))
                                                        {
                                                            //                                                            if (!potentialLVTypes.Contains(v.type))
                                                            //                                                                Debugger.Break();
                                                            potentialLVTypes.Add(v.type);
                                                        }
                                                }

                            /*                                from n in cfg.nodes
                                                            from c in n.clauses
                                                            from l in c.literals
                                                            where l.polarity && l.f.isEquality
                                                            let eq = l.f.asEquality
                                                            from tt in eq.args
                                                            where (tt.isVariable)
                                                            let v = tt.asVariable.variable
                                                            where (c.literals.All(l2=>ReferenceEquals(l,l2) || !l2.freeVariables.Contains(v) || !l2.f.isEquality || !l2.polarity || !l2.f.asEquality.args.Any(a2=>a2.isVariable && a2.asVariable.variable==v)))
                                                            select v.type
                                                            );*/
                            #endregion
                            var rootFs = new HashSet<Function>(
                                from c in cfg.rootNode.clauses
                                from f in c.functions
                                select f
                                );
                            var axfs = new HashSet<Function>(
                                from c in cfg.rootNode.clauses
                                where c.freeVariables.Count > 0
                                from f in c.functions
                                where !f.nameN.StartsWith(@"@")
                                select f
                                );
                            var nonAxFs = new HashSet<Function>(
                                from n in cfg.nodes
                                where n != cfg.rootNode
                                from c in n.clauses
                                from f in c.functions
                                select f
                                );
                            axfs.ExceptWith(nonAxFs);
#if DEBUG
                            foreach (var f in axfs)
                                Debug.WriteLine("  AXF:{0}", f.ToString(), 1);
#endif
                            var likelyUselessFs = new HashSet<Function>(
                                from f in axfs
                                where !potentialLFunctions.Contains(f)
                                where !potentialLVTypes.Contains(f.resultType)
                                select f
                                );
                            //                            var rcs = new List<Clause>(from c in cfg.rootNode.clauses where c.functions.Intersect(uselessFs).Any() select c);
                            //                            Debugger.Break();
                            //                            foreach (var c in rcs)
                            //                                cfg.rootNode.clauses.Remove(c);
                            //                            var axOC = new Dictionary<Function, int>();
                            //                            foreach (var c in cfg.rootNode.clauses)
                            //                                foreach (var f in c.functions)

                            var allFs = new HashSet<Function>(nonAxFs.Union(rootFs));
                            var maxLayer = constantLayer.Count;
                            foreach (var f in allFs)
                                if (f.isInterpreted)
                                    functionTKBOMap[f] = new SimpleTKBO(0, 1);
                                else if (f.isConstant)
                                    functionTKBOMap[f] = new SimpleTKBO((constantLayer.ContainsKey(f) ? constantLayer[f] : 0) + 2, 1);
                                else
                                    if (likelyUselessFs.Contains(f))
                                    functionTKBOMap[f] = new SimpleTKBO(maxLayer, 10);
                                else
                                    functionTKBOMap[f] = new SimpleTKBO(1, 1);
                            //                            Debugger.Break();
                        }
                        #endregion

                        #region make repository
                        cfg.termRepository = new TermRepository(cfg.srs, functionTKBOMap);
                        #endregion
                        if (preConstants > 0)
                        {
                            Slicer.log(2, "   Ordering massage done - constants {0} => {1} [{2}%]", preConstants, allConstants.Count, 100 * (allConstants.Count - preConstants) / preConstants);
                            Slicer.log(3, "    {0} layers : {1}", layers.Count, Operator.commaSeparatedList(from l in layers select l.Count.ToString()));
                        }
                    }

                    private void checkBranchJoinScopeConsistency()
                    {
#if DEBUG
                        foreach (var kv in branch2Join)
                            foreach (var jn in kv.Value)
                        {
                            var bn = kv.Key;
                            var cs = new HashSet<Function>(from c in bn.scope.constants.Intersect(jn.scope.constants) where !isTheoryConstant(c) select c);
                            if (cs.Any())
                            {
                                var todo = new Queue<CFG.Node>();
                                todo.Enqueue(jn);
                                var done = new HashSet<CFG.Node>();
                                while (todo.Any())
                                {
                                    var n = todo.Dequeue();
                                    Debug.Assert(cs.IsSubsetOf(n.scope.constants));
                                    if (n != bn)
                                        foreach (var pn in n.predecessors)
                                            if (done.Add(pn))
                                            {
                                                Debug.Assert(pn.topoIndex >= bn.topoIndex);
                                                todo.Enqueue(pn);
                                            }
                                }
                            }
                        }
#endif
                    }

                    private bool isTheoryConstant(Function c)
                    {
                        return cfg.srs.isNumber(c) || cfg.srs.isBooleanLiteral(c);
                    }

                    private void addToScopeAfterBranch(Node bn, Node sn, Function c)
                    {
                        Debug.Assert(!sn.inScope(c));
                        sn.scope.add(c);
                        endsPartiallyAt.remove(c, bn);
                        if (sn.successors.Count == 0)
                            deadEndsAt.insert(c, sn);
                        else
                            insertEndsFullyAt(c, sn);
                    }

                    private Function renameFull(Function oc, Node bn)
                    {
                        #region precondition
#if DEBUG
                        Debug.Assert(bn.inScope(oc));
                        Debug.Assert(bn.predecessors.All(pn => !pn.inScope(oc)));
                        Debug.Assert(beginsAt[oc].Count > 1);
                        Debug.Assert(beginsAt[oc].Contains(bn));
#endif
                        #endregion precondition

                        var scope = getScopeFrom(oc, bn);
                        var nc = rename(oc, scope);

                        #region postcondition
#if DEBUG
                        //                    Console.WriteLine("      Renaming disjoint set at {0} : {1} => {2}", bn, oc.name, nc.name);
                        Debug.Assert(!beginsAt[oc].Contains(bn));
                        Debug.Assert(beginsAt[nc].Contains(bn));
#endif
                        #endregion postcondition
                        return nc;
                    }

                    private SortedSet<Node> getScopeFrom(Function oc, Node n)
                    {
                        Debug.Assert(n.inScope(oc));
                        var result = new SortedSet<Node>(NodeTopoComp.get);
                        var todo = new SortedSet<Node>(NodeTopoComp.get);
                        todo.Add(n);
                        result.Add(n);
                        while (todo.Count > 0)
                        {
                            var nn = todo.Min;
                            todo.Remove(nn);
                            Debug.Assert(nn.inScope(oc));
                            Debug.Assert(result.Contains(nn));
                            foreach (var sn in nn.successors)
                                if (sn.inScope(oc))
                                    if (result.Add(sn))
                                        todo.Add(sn);
                        }
                        return result;
                    }
                    private Function renameToFirstJoin(Function oc, Node bn)
                    {
                        #region precondition
#if DEBUG
                        Debug.Assert(bn.inScope(oc));
                        Debug.Assert(bn.predecessors.All(pn => !pn.inScope(oc)));
                        Debug.Assert(beginsAt[oc].Count > 1);
                        Debug.Assert(beginsAt[oc].Contains(bn));
#endif
                        #endregion precondition

                        Node fjn;
                        var scope = getScopeFromToFirstJoin(bn, oc, out fjn);
                        Debug.Assert(fjn != null);
                        Debug.Assert(fjn.predecessors.Count == 2 && fjn.predecessors.All(pn => pn.inScope(oc)));
                        Debug.Assert(fjn.predecessors.Intersect(scope).Count() == 1);
                        var lbfjn = fjn.predecessors.Intersect(scope).First();
                        var nc = rename(oc, scope);
                        Debug.Assert(endsFullyAt[nc].Contains(lbfjn));
                        Debug.Assert(!beginsAt[oc].Contains(lbfjn));
                        lbfjn.scope.add(oc);
                        beginsAt[oc].Add(lbfjn);
                        var cc = new Clause(new Literal(new EqualityFormula(new FunctionApplicationFormula(oc, new ITerm[0]), new FunctionApplicationFormula(nc, new ITerm[0])), true));
                        lbfjn.clauses.Add(cc);

                        #region postcondition
#if DEBUG
                        //                    Console.WriteLine("      Renaming to first join from {0}: {1} => {2}", bn, oc.name, nc.name);
                        Debug.Assert(!beginsAt[oc].Contains(bn));
                        Debug.Assert(beginsAt[nc].Contains(bn));
#endif
                        #endregion postcondition
                        return nc;
                    }
                    private SortedSet<Node> getScopeFromToFirstJoin(Node bn, Function oc, out Node fjn)
                    {
                        fjn = null;
                        Debug.Assert(bn.inScope(oc));
                        Debug.Assert(bn.predecessors.All(pn => !pn.inScope(oc)));
                        var result = new SortedSet<Node>(NodeTopoComp.get);
                        var todo = new SortedSet<Node>(NodeTopoComp.get);
                        todo.Add(bn);
                        result.Add(bn);
                        while (todo.Count > 0)
                        {
                            var n = todo.Min;
                            todo.Remove(n);
                            Debug.Assert(n.inScope(oc));
                            Debug.Assert(result.Contains(n));
                            Debug.Assert(!n.predecessors.All(pn => pn.inScope(oc)) || n.predecessors.Any(result.Contains));
                            if (n.predecessors.Count == 2 && n.predecessors.All(pn => pn.inScope(oc)) && n.predecessors.Any(pn => !result.Contains(pn)))
                            {
                                Debug.Assert(todo.Count == 0);
                                Debug.Assert(fjn == null);
                                fjn = n;
                                result.Remove(n);
                            }
                            else
                                foreach (var sn in n.successors)
                                    if (sn.inScope(oc))
                                        if (result.Add(sn))
                                            todo.Add(sn);
                        }
                        return result;
                    }
                    private Function renameFrom(Function oc, Node n)
                    {
                        #region precondition
#if DEBUG
                        Debug.Assert(n.inScope(oc));
                        Debug.Assert(n.predecessors.Any(pn0 => pn0.inScope(oc)));
                        Debug.Assert(n.predecessors.Count == 1);
                        Debug.Assert(n.successors.Any(sn => sn.inScope(oc)));
#endif
                        #endregion precondition

                        var scope = getScopeFrom(oc, n);
                        Debug.Assert(scope.Contains(n));
                        scope.Remove(n);
                        Debug.Assert(scope.All(nn => nn.topoIndex > n.topoIndex));
                        var nc = rename(oc, scope);
                        var cc = new Clause(new Literal(new EqualityFormula(new FunctionApplicationFormula(oc, new ITerm[0]), new FunctionApplicationFormula(nc, new ITerm[0])), true));
                        n.clauses.Add(cc);
                        n.scope.add(nc);
                        beginsAt[nc] = new HashSet<Node> { n };
                        insertEndsFullyAt(oc, n);
                        var pn = n.predecessors.First();
                        Debug.Assert(pn.inScope(oc));
                        Debug.Assert(pn.successors.Count > 0);
                        Debug.Assert(pn.successors.Any(ssn => ssn.inScope(oc)));
                        if (endsPartiallyAt.ContainsKey(oc))
                        {
                            endsPartiallyAt[oc].Remove(n);
                            if (endsPartiallyAt[oc].Count == 0)
                                endsPartiallyAt.Remove(oc);
                        }
                        #region postcondition
#if DEBUG
                        Debug.Assert(beginsAt[nc].Contains(n) && beginsAt[nc].Count == 1);
                        Debug.Assert(!endsPartiallyAt.ContainsKey(oc) || !endsPartiallyAt[oc].Contains(n));
#endif
                        #endregion postcondition
                        return nc;
                    }

                    private void insertEndsFullyAt(Function oc, Node n)
                    {
//                        if (oc.name == @"Heap")
//                            Debugger.Break();
                        endsFullyAt.insert(oc, n);
                    }
                    private bool removeEndsFullyAt(Function oc, Node n)
                    {
//                        if (oc.name == @"Heap")
//                            Debugger.Break();
                        return endsFullyAt.remove(oc,n);
                    }

                    private Function rename(Function oc, SortedSet<Node> scope)
                    {
                        var nc = cfg.srs.getFreshFunction(oc.name, TypeTuple.make(), oc.resultType);
                        foreach (var n in scope)
                        {
//                            Console.WriteLine("   rename({0} => {1},{2})", oc.name, nc.name, n.ToString());
                            Debug.Assert(!n.scope.renameMap.ContainsKey(oc));
                            n.scope.renameMap[oc] = nc;
                            if (!cfg.renameInverseMap.ContainsKey(nc))
                                cfg.renameInverseMap[nc] = oc;
                            else
                                Debug.Assert(cfg.renameInverseMap[nc] == oc);
                            Debug.Assert(n.inScope(oc));
                            n.scope.remove(oc);
                            n.scope.forwardConstants.Remove(oc);
                            n.scope.liveConstants.Remove(oc);

                            replaceConstantInClauses(n, oc, nc);
                            n.scope.add(nc);
                            n.scope.liveConstants.Add(nc);
                            n.scope.forwardConstants.Add(nc);
                            if (n.scope.keyConstants.Remove(oc))
                                n.scope.keyConstants.Add(nc);
                            if (n.scope.newConstants.Remove(oc))
                                n.scope.newConstants.Add(nc);
                            if (beginsAt[oc].Remove(n))
                                beginsAt.insert(nc, n);
                            if (n.predecessors.All(pn => !pn.inScope(nc)))
                                beginsAt.insert(nc, n);
                            if (deadEndsAt.ContainsKey(oc))
                                deadEndsAt[oc].Remove(n);
                            if (endsFullyAt.ContainsKey(oc))
                                removeEndsFullyAt(oc, n);// endsFullyAt[oc].Remove(n);
                            if (endsPartiallyAt.ContainsKey(oc))
                            {
                                endsPartiallyAt[oc].Remove(n);
                                if (endsPartiallyAt[oc].Count == 0)
                                    endsPartiallyAt.Remove(oc);
                            }

                            foreach (var pn in n.predecessors)
                                if (pn.inScope(oc))
                                    if (pn.successors.All(sn => !sn.inScope(oc)))
                                        insertEndsFullyAt(oc, pn);
                                    else
                                        endsPartiallyAt.insert(oc, pn);
                            if (n.predecessors.All(pn => !pn.inScope(nc)))
                                beginsAt.insert(nc, n);

                            if (n.successors.Count == 0)
                                deadEndsAt.insert(nc, n);
                            else if (n.successors.All(sn => !scope.Contains(sn)))
                                insertEndsFullyAt(nc, n);
                            else if (n.successors.Any(sn => !scope.Contains(sn)))
                                endsPartiallyAt.insert(nc, n);
                        }

                        return nc;
                    }
                    private void replaceConstantInClauses(Node n, Function oc, Function nc)
                    {
                        foreach (var cc in n.clauses.ToList())
                        {
                            n.clauses.Remove(cc);
                            n.clauses.Add(replace(cc, oc, nc));
                        }
                    }
                    private Clause replace(Clause cc, Function oc, Function nc)
                    {
                        if (!cc.constants.Contains(oc))
                            return cc;
                        var nls = new List<Literal>();
                        foreach (var l in cc.literals)
                            nls.Add(replace(l, oc, nc));
                        return new Clause(nls);
                    }
                    private Literal replace(Literal l, Function oc, Function nc)
                    {
                        if (!l.constants.Contains(oc))
                            return l;
                        return new Literal(replace(l.f, oc, nc), l.polarity);
                    }
                    private IAtomicFormula replace(IAtomicFormula f, Function oc, Function nc)
                    {
                        if (!f.constants.Contains(oc))
                            return f;
                        if (f.isEquality)
                            return replace(f.asEquality, oc, nc);
                        else
                            return replace(f.asPredicateApplication, oc, nc);
                    }
                    private PredicateApplication replace(PredicateApplication f, Function oc, Function nc)
                    {
                        if (!f.constants.Contains(oc))
                            return f;
                        return new PredicateApplication(f.predicate, replace(f.args, oc, nc));
                    }
                    private EqualityFormula replace(EqualityFormula f, Function oc, Function nc)
                    {
                        if (!f.constants.Contains(oc))
                            return f;
                        return new EqualityFormula(replace(f.args[0], oc, nc), replace(f.args[1], oc, nc));
                    }
                    private ITermTuple replace(ITermTuple tt, Function oc, Function nc)
                    {
                        return new TermTuple(from t in tt select replace(t, oc, nc));
                    }
                    private ITerm replace(ITerm t, Function oc, Function nc)
                    {
                        if (t.isFunctionApplication)
                            return replace(t.asFunctionApplication, oc, nc);
                        else
                            return t;
                    }
                    private FunctionApplicationFormula replace(FunctionApplicationFormula fa, Function oc, Function nc)
                    {
                        if (fa.constants.Contains(oc))
                            return new FunctionApplicationFormula(fa.function == oc ? nc : fa.function, replace(fa.args, oc, nc));
                        else
                            return fa;
                    }

                    int curTopoIndex = 0;
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        n.topoIndex = curTopoIndex;
                        curTopoIndex++;
#if DEBUG
                        foreach (var cc in n.clauses)
                            foreach (var c in cc.constants)
                                Debug.Assert(n.inScope(c));
#endif
                        var snc = new Dictionary<Node, ISet<Function>>();
                        foreach (var sn in n.successors)
                            snc[sn] = new HashSet<Function>(sn.scope.constants.Intersect(n.scope.constants));

                        foreach (var c in n.scope.constants)
                        {
                            if (n.predecessors.All(p => !p.inScope(c)))
                                beginsAt.insert(c, n);
                            if (n.successors.Count > 0)
                            {
                                foreach (var sncKV in snc)
                                {
                                    var scs = sncKV.Value;
                                    if (!scs.Contains(c))
                                    {
                                        /*                                    earlierThan.insert(c, scs);
                                                                            foreach (var sc in scs)
                                                                                laterThan.insert(sc, c);*/
                                    }
                                }

                                //                            if (n.successors.Any(sn => !sn.inScope(c)))
                                {
                                    var continuesOn = snc.Sum(snKV => snKV.Value.Contains(c) ? 1 : 0);
                                    if (continuesOn == 0)
                                        insertEndsFullyAt(c, n);
                                    else if (continuesOn < n.successors.Count)
                                        endsPartiallyAt.insert(c, n);
                                }
                            }
                            else
                                deadEndsAt.insert(c, n);
                        }//foreach
                    }//void apply
                }//class VariableOrderCalculator1 
                public void calculateVariableOrder()
                {
                    var voc1 = new VariableOrderCalculator1(this);
                    applyForward(voc1, false);
                }
                #endregion variable order

                #region xtra terms
                class XtraTermsCalculator : BackwardVisitor
                {
                    public void atEnd() { }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        if (!Universe.extraGoalTermsKnob && !Universe.extraNonGoalTermsKnob)
                            return;

                        if (Universe.extraNonGoalTermsKnob)
                            n.xtraGroundTerms.UnionWith(from s in n.successors from xt in s.xtraGroundTerms where n.inScope(xt) select xt);
                        if (Universe.extraGoalTermsKnob)
                            n.xtraGoalGroundTerms.UnionWith(from s in n.successors from xt in s.xtraGoalGroundTerms where n.inScope(xt) select xt);

                        var myXtraTerms = from c in n.clauses from t in getXtraTerms(c) select t;
                        if (n.isGoal)
                        {
                            if (Universe.extraGoalTermsKnob)
                                n.xtraGoalGroundTerms.UnionWith(myXtraTerms);
                        }
                        else
                        {
                            if (Universe.extraNonGoalTermsKnob)
                                n.xtraGroundTerms.UnionWith(myXtraTerms);
                        }

                        n.xtraGroundTerms.ExceptWith(n.xtraGoalGroundTerms);
                        if (Universe.extraDSATermsKnob)
                            addDSAXtraTerms(n);

                    }

                    private void addDSAXtraTerms(Node n)
                    {
                        if (Universe.extraNonGoalTermsKnob)
                            foreach (var xt in n.xtraGroundTerms.ToList())
                                addDSAXtraTerms(n, xt, false);
                        if (Universe.extraGoalTermsKnob)
                            foreach (var xgt in n.xtraGoalGroundTerms.ToList())
                                addDSAXtraTerms(n, xgt, true);
                    }

                    private void addDSAXtraTerms(Node n, ITerm xt, bool goal)
                    {
                        if (!xt.isFunctionApplication || !xt.asFunctionApplication.function.isMapRead)
                            return;
                        Function m;
                        if (tryGetMap(xt, out m))
                        {
                            foreach (var dsaM in n.getDSASources(m))
                            {
                                var dsaT = makeDSAT(xt, m, dsaM);
                                if (goal)
                                    n.xtraGoalGroundTerms.Add(dsaT);
                                else
                                    n.xtraGroundTerms.Add(dsaT);
                            }
                        }
                    }

                    private ITerm makeDSAT(ITerm t, Function m, Function dsaM)
                    {
                        Debug.Assert(t.isFunctionApplication);
                        var fa = t.asFunctionApplication;
                        var arg0 = fa.args[0];
                        ITerm dsaC;
                        if (arg0.isConstant)
                        {
                            Debug.Assert(arg0.asFunctionApplication.function == m);
                            dsaC = new FunctionApplicationFormula(dsaM, new ITerm[0]);
                        }
                        else
                            dsaC = makeDSAT(arg0, m, dsaM);
                        return new FunctionApplicationFormula(fa.function, new[] { dsaC }.Concat(fa.args.Skip(1)));
                    }

                    private bool tryGetMap(ITerm t, out Function m)
                    {
                        Debug.Assert(t.isFunctionApplication);
                        var fa = t.asFunctionApplication;
                        Debug.Assert(fa.function.isMapRead);
                        var arg0 = fa.args.First();
                        if (arg0.isConstant)
                        {
                            m = arg0.asFunctionApplication.function;
                            return true;
                        }
                        else if (arg0.isFunctionApplication && arg0.asFunctionApplication.function.isMapRead)
                            return tryGetMap(arg0, out m);
                        m = null;
                        return false;
                    }

                    private IEnumerable<ITerm> getXtraTerms(Clause c)
                    {
                        return from a in c.literals from st in a.f.subTerms from t in getXtraTerms(st) select t;
                    }

                    private IEnumerable<ITerm> getXtraTerms(ITerm t)
                    {
                        var result = new HashSet<ITerm>(from st in t.subTerms from sst in getXtraTerms(st) select sst);
                        if (termCriterion(t))
                            result.Add(t);
                        return result;
                    }
                    public bool termCriterion(ITerm t)
                    {
                        return t.isGround /*&& t.isFunctionApplication && t.asFunctionApplication.function.isMapRead*/;
                    }
                }
                public void calculateXtraTerms()
                {
                    applyBackwards(new XtraTermsCalculator());
                }
                #endregion xtra terms

                #region DSA
                class DSACalculator : BackwardVisitor
                {
                    public void atEnd() { }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        if (!n.predecessors.Any())
                            return;
                        var dsaVars = from v in n.scope.liveConstants where v.resultType.isMapType select v;
                        foreach (var v in dsaVars)
                        {
                            var usingPreds = (from p in n.predecessors where p.scope.liveConstants.Contains(v) select p);
                            var usingSuccs = (from s in n.successors where s.scope.liveConstants.Contains(v) select s);

                            if (usingPreds.Any())
                                if (usingSuccs.Any())
                                    if (n.clauses.Any(c => c.constants.Contains(v)))
                                        n.dsa.transitUsed.Add(v);
                                    else
                                        n.dsa.transitUnused.Add(v);
                                else
                                    n.dsa.elim.Add(v);
                            else //!usingPreds
                                if (usingSuccs.Any())
                                n.dsa.intro.Add(v);
                            else
                                n.dsa.temp.Add(v);

                            if (n.predecessors.Count > 1 && n.scope.newConstants.Contains(v) && usingPreds.Count() > 0)
                                if (usingPreds.Count() == n.predecessors.Count)
                                    n.dsa.phi.Add(v);
                                else
                                    n.dsa.incompletePhi.Add(v);
                        }

                        var doneTemps = new HashSet<Function>();
                        var tempChain = new HashSet<Function>(n.dsa.intro);
                        while (tempChain.Any())
                        {
                            //                    foreach (var v in n.dsaIntro) //try to find sources for introduced DSA variables
                            //                    {
                            var v = tempChain.First();
                            tempChain.Remove(v);
                            doneTemps.Add(v);

                            var potentialSources = new HashSet<Function>(from ov in n.scope.liveConstants where ov != v && ov.resultType.isEquivalent(v.resultType) select ov);
                            if (!potentialSources.Any())
                            {
                                if (n.predecessors.Any())
                                {
#if DEBUG
                                    Console.WriteLine("   Warning at {0}: dsa {1} has no potential sources", n, v);
#endif
                                }
                                continue;
                            }

                            n.dsaIntroAssignmentSources[v] = new HashSet<Function>();
                            n.dsaIntroFrameSources[v] = new HashSet<Function>();
                            var relevantClauses = (from c in n.clauses where c.constants.Contains(v) && c.constants.Intersect(potentialSources).Any() select c).ToList();
                            foreach (var c in relevantClauses)
                            {
                                Function source;
                                if (tryFindAssignmentSource(n, c, v, out source))
                                {
                                    Debug.Assert(!n.dsaIntroFrameSources[v].Any());
                                    n.dsaIntroAssignmentSources[v].Add(source);
                                    if (n.dsaIntroAssignmentSources[v].Count > 1)
                                    {
#if DEBUG
                                        Console.WriteLine("   Warning at {0}: dsa {1} has more than one assignment source : {2}", n, v, Operator.commaSeparatedList(from vv in n.dsaIntroAssignmentSources[v] select vv.ToString()));
#endif
                                    }
                                    if (n.dsa.temp.Contains(source))
                                    {
                                        if (tempChain.Contains(source))
                                        {
#if DEBUG
                                            Console.WriteLine("   Warning at {0}: dsaTemp {1} is source for more than one", n, v);
#endif
                                        }
                                        if (!doneTemps.Contains(source))
                                            tempChain.Add(source);
                                    }
                                }
                            }
                            if (!n.dsaIntroAssignmentSources[v].Any())
                            {
                                foreach (var c in relevantClauses)
                                {
                                    ISet<Function> pSources = new HashSet<Function>();
                                    if (tryFindFrameSources(n, c, v, pSources))
                                    {
                                        if (pSources.Count > 1)
                                        {
#if DEBUG
                                            Console.WriteLine("   Warning at {0}: more than one potential source for {1} : {2} ", n, v, Operator.commaSeparatedList(from ps in pSources select ps.ToString()));
#endif
                                        }
                                        n.dsaIntroFrameSources[v].UnionWith(pSources);
                                        if (n.dsaIntroFrameSources[v].Count > 1)
                                        {
#if DEBUG
                                            Console.WriteLine("   Warning at {0}: DSA {1} has more than one frame source : {2}", n, v, Operator.commaSeparatedList(from vv in n.dsaIntroFrameSources[v] select vv.ToString()));
#endif
                                        }
                                        if (n.dsaIntroAssignmentSources[v].Any())
                                        {
#if DEBUG
                                            Console.WriteLine("   Warning at {0}: DSA {1} has both assignment and frame sources : {2} | {3}", n, v, Operator.commaSeparatedList(from vv in n.dsaIntroAssignmentSources[v] select vv.ToString()), Operator.commaSeparatedList(from vv in n.dsaIntroFrameSources[v] select vv.ToString()));
#endif
                                        }
                                        foreach (var pSource in pSources)
                                            if (n.dsa.temp.Contains(pSource))
                                            {
                                                if (tempChain.Contains(pSource))
                                                {
#if DEBUG
                                                    Console.WriteLine("   Warning at {0}: DSA temp {1} is source for more than one", n, pSource);
#endif
                                                }
                                                if (!doneTemps.Contains(pSource))
                                                    tempChain.Add(pSource);
                                            }
                                    }
                                }
                            }

                            if (!n.dsaIntroAssignmentSources[v].Any() && !n.dsaIntroFrameSources[v].Any())
                            {
                                if (potentialSources.Count == 1 && relevantClauses.Any())
                                {
                                    var ov = potentialSources.First();
#if DEBUG
                                    Console.WriteLine("   Info at {0}: Assigning potential dsa source {2} to {1} without exact recognition", n, v, ov);
#endif
                                    n.dsaIntroFrameSources[v].Add(ov);
                                }
                            }

                        }
                        if (n.predecessors.Any())
                            foreach (var v in n.dsa.intro)
                            {
                                var relevantClauses = (from c in n.clauses where c.constants.Contains(v) select c).ToList();
                                if (
                                    (!n.dsaIntroAssignmentSources.ContainsKey(v) || !n.dsaIntroAssignmentSources[v].Any()) &&
                                    (!n.dsaIntroFrameSources.ContainsKey(v) || !n.dsaIntroFrameSources[v].Any())
                                    )
                                {
#if DEBUG
                                    Slicer.log(1,"   Warning at {0}: orphan DSA variable {1}", n, v);
#endif
                                }
                            }
                    }


                    private bool tryFindFrameSources(Node n, Clause c, Function v, ISet<Function> psources)
                    {
                        if (!c.constants.Contains(v))
                            return false;

                        var nonReadWriteMapReferences = getNonReadWriteMapReferences(c, v);
                        if (nonReadWriteMapReferences.Contains(v) && nonReadWriteMapReferences.Count() > 1)
                            psources.UnionWith(nonReadWriteMapReferences.Except(new[] { v }));
                        /*                    psources.UnionWith(
                                            from ps in c.constants
                                            where !n.dsaIntroAssignmentSources.ContainsKey(ps)
                                            where !n.dsaIntroFrameSources.ContainsKey(ps)
                                            where ps.resultType.isEquivalent(v.resultType)
                                            where ps != v
                                            select ps);*/
                        return psources.Any();
                    }

                    private ISet<Function> getNonReadWriteMapReferences(Clause c, Function v)
                    {
                        var result = new HashSet<Function>();
                        foreach (var a in c.literals)
                        {
                            var sts = a.f.subTerms.ToList();
                            if (a.f.isPredicateApplication && (a.f.asPredicateApplication.predicate.isMapRead || a.f.asPredicateApplication.predicate.isMapWrite))
                                sts.RemoveAt(0);
                            foreach (var t in sts)
                                result.UnionWith(getNonReadWriteMapReferences(t, v));
                        }
                        return result;
                        //                            foreach (vfrom m in getNonReadWriteMapReferences(t,v) select m);
                    }

                    private IEnumerable<Function> getNonReadWriteMapReferences(ITerm t, Function v)
                    {
                        if (t.isVariable)
                            return new Function[0];
                        var fa = t.asFunctionApplication;
                        if (fa.function.isConstant && fa.function.resultType.isMapType && v.resultType.isEquivalent(fa.function.resultType))
                            return new[] { fa.function };

                        var sts = fa.args.ToList();
                        if (fa.function.isMapRead || fa.function.isMapWrite)
                            sts.RemoveAt(0);
                        return from st in sts from m in getNonReadWriteMapReferences(st, v) select m;
                    }

                    private bool tryFindAssignmentSource(Node n, Clause c, Function v, out Function source)
                    {
                        source = null;
                        if (c.literals.Count != 1)
                            return false;

                        var a = c.literals.First();
                        if (!a.polarity || !a.f.isEquality)
                            return false;

                        var eq = a.f.asEquality;

                        ITerm other;
                        if (eq.t1.isFunctionApplication && eq.t1.asFunctionApplication.function == v)
                            other = eq.t2;
                        else if (eq.t2.isFunctionApplication && eq.t2.asFunctionApplication.function == v)
                            other = eq.t1;
                        else
                            return false;

                        if (!other.isFunctionApplication)
                            return false;
                        var otherFA = other.asFunctionApplication;
                        if (otherFA.function.isConstant)
                            if (!n.dsaIntroAssignmentSources.ContainsKey(otherFA.function) || !n.dsaIntroAssignmentSources[otherFA.function].Contains(v))
                            {
                                source = otherFA.function;
                                return true;
                            }
                            else
                                return false; //assignment is otherway around

                        if (n.cfg.srs.isMapWrite(otherFA.function)) //no circularity check
                        {
                            var pm = otherFA.args.First();
                            if (pm.isFunctionApplication)
                            {
                                var mufa = pm.asFunctionApplication;
                                if (mufa.function.isConstant)
                                {
                                    source = mufa.function;
                                    if (n.dsaIntroAssignmentSources.ContainsKey(source))
                                    {
#if DEBUG
                                        Console.WriteLine("Warning at {0}: {1} has a potential fork/circular dsa {2}", n, v, source);
#endif
                                    }
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                }
                public void calculateDSA_OLD()
                {
                    if (!Universe.extraDSATermsKnob)
                        return;
                    applyBackwards(new DSACalculator());
                }
                class DSAPass1 : ForwardVisitor
                {
                    public void atEnd()
                    {
                    }
                    public DSAPass1(CFG cfg)
                    {
                        this.cfg = cfg;
                    }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        var dsaInfo = n.dsa;
                        foreach (var t in n.xtraGroundTerms.Union(n.xtraGoalGroundTerms))
                        {
                            if (t.isConstant)
                            {
                                var f = t.asFunctionApplication.function;
                                if (f.resultType.isMapType)
                                {
                                    dsaInfo.mapsByType.insert(f.resultType as MapType, f);
                                    dsaInfo.maps.Add(f);
                                    maps.Add(f);
                                }
                            }
                        }
                        n.dsa.assignedMaps.UnionWith(FU.intersection(from p in n.predecessors select p.dsa.assignedMaps).Intersect(dsaInfo.maps));

                        foreach (var c in n.clauses.ToList())
                            mapIfFrameRule(n, c);
                        foreach (var c in n.clauses)
                            mapIfDefiniteAssignment(n, c);
                        foreach (var c in n.clauses)
                            mapIfEquality(n, c);

                        foreach (var mtKV in dsaInfo.mapsByType)
                        {
                            var maps = mtKV.Value;
                            foreach (var m in maps)
                                if (!dsaInfo.assignedMaps.Contains(m))
                                {
                                    if (!n.predecessors.Any())
                                    {
                                        dsaInfo.assignedMaps.Add(m);
#if DEBUG
                                        Console.WriteLine("    At {0}: Adding initial map {1} - ", n, m.name);
#endif
                                    }/*else if (!n.predecessors.All(p=>nodeDSAInfo[p].maps.Contains(m)))
                            {
                                var isNew = !n.predecessors.Any(p => nodeDSAInfo[p].maps.Contains(m));
                                Console.Write("    At {0}: Unassigned map {1} - ",n,m.name);
                                if (isNew)
                                    Console.Write(" new ");
                                else{
                                    var isPartialDefined = n.predecessors.Any(p=>!nodeDSAInfo[p].maps.Contains(m));
                                    if (isPartialDefined)
                                        Console.Write(" partial defined ");
                                    else{
                                        var isPartialAssigned = n.predecessors.Any(p=>nodeDSAInfo[p].assignedMaps.Contains(m));
                                        if (isPartialAssigned)
                                            Console.Write(" partial assigned ");
                                    }
                                }
                                if (maps.Count > 1)
                                    Console.WriteLine(" possible sources: A:{0} || U:{1}", 
                                        Operator.commaSeparatedList(from mm in maps where mm != m where dsaInfo.assignedMaps.Contains(mm) select mm.name),
                                        Operator.commaSeparatedList(from mm in maps where mm != m where !dsaInfo.assignedMaps.Contains(mm) select mm.name)
                                        );
                                else
                                    Console.WriteLine(" no possible sources");
                            }*/
                                }
                        }

                        if (!n.predecessors.Any())
                            dsaInfo.assignedMaps.UnionWith(dsaInfo.maps);
                    }

                    private void mapIfFrameRule(Node n, Clause c)
                    {
                        if (c.literals.Count > 1)
                            return;
                        var a = c.literals.First();
                        if (!a.f.isPredicateApplication || !a.isGround)
                            return;
                        var pa = a.f.asPredicateApplication;
                        IDictionary<PredicateFrameRuleTrigger, ISet<Clause>> e1;
                        if (!predicateToFrameRuleMap.TryGetValue(pa.predicate, out e1))
                            return;
                        foreach (var kv in e1)
                        {
                            var m1 = a.f.asPredicateApplication.args[kv.Key.a1].asFunctionApplication.function;
                            var m2 = a.f.asPredicateApplication.args[kv.Key.a2].asFunctionApplication.function;
                            var b = n.dsa.frameMaps.insert2(m1, m2);
                            if (n.dsa.assignedMaps.Contains(m1))
                                dsaAssignedMap.insert(m2, m1);
                            if (n.dsa.assignedMaps.Contains(m2))
                                dsaAssignedMap.insert(m1, m2);
#if DEBUG
                            if (b)
                            {
                                Slicer.log(2,"    At {0}: Adding frame rule {1} [] {2}", n, m1, m2);
                            }
#endif
                            foreach (var frc in kv.Value)
                                foreach (var sc in getMyOccurence(a, frc))
                                {
                                    //                            Console.WriteLine("    At {0}: Adding frame rule instance {1}", n, sc);
                                    n.clauses.Add(sc);
                                    n.hasFrameRule = true;
                                }
                        }
                    }
                    private IEnumerable<Clause> getMyOccurence(Literal a, Clause c)
                    {
                        var result = new HashSet<Clause>();
                        for (var i = 0; i < c.literals.Count; i++)
                        {
                            var sc = FU.tryUnify(a, c, i);
                            if (sc != null)
                                result.Add(sc);
                        }
                        return result;
                    }
                    private void mapIfDefiniteAssignment(Node n, Clause c)
                    {
                        if (c.literals.Count > 1)
                            return;
                        var a = c.literals.First();
                        if (!a.f.isEquality || !a.polarity || !a.isGround)
                            return;
                        var eq = a.f.asEquality;
                        if (!eq.equality.eqType.isMapType)
                            return;
                        var t1fa = eq.t1 as FunctionApplicationFormula;
                        var t2fa = eq.t2 as FunctionApplicationFormula;
                        if (t1fa != null && t2fa != null)
                        {
                            mapIfMapWrite(n, t1fa, t2fa);
                            mapIfMapWrite(n, t2fa, t1fa);
                        }
                    }
                    private void mapIfEquality(Node n, Clause c)
                    {
                        if (c.literals.Count > 1)
                            return;
                        var a = c.literals.First();
                        if (!a.f.isEquality || !a.polarity || !a.isGround)
                            return;
                        var eq = a.f.asEquality;
                        if (!eq.equality.eqType.isMapType)
                            return;
                        var t1fa = eq.t1 as FunctionApplicationFormula;
                        var t2fa = eq.t2 as FunctionApplicationFormula;
                        if (t1fa != null && t2fa != null)
                        {
                            mapIfEquality(n, t1fa, t2fa);
                        }
                    }
                    private void mapIfEquality(Node n, FunctionApplicationFormula t1fa, FunctionApplicationFormula t2fa)
                    {
                        if (t1fa.isConstant && t2fa.isConstant)
                        {
                            var m1 = t1fa.function;
                            var m2 = t2fa.function;
                            n.dsa.equalityMaps.insert2(m1, m2);
                            var m1Assigned = n.dsa.assignedMaps.Contains(m1);
                            var m2Assigned = n.dsa.assignedMaps.Contains(m2);
                            if (m1Assigned)
                                if (m2Assigned)
                                {
                                    //                            Console.WriteLine("    At {0}: Mapped bidirected equality: {1} == {2}", n, m1, m2);
                                    dsaAssignedMap.insert(m1, m2);
                                    dsaAssignedMap.insert(m2, m1);
                                }
                                else
                                {
                                    //                            Console.WriteLine("    At {0}: Mapped directed equality: {1} := {2}", n, m2, m1);
                                    n.dsa.definitelyAssignedMaps.insert(m2, m1);
                                    n.dsa.assignedMaps.Add(m2);
                                    dsaAssignedMap.insert(m2, m1);
                                }
                            else if (m2Assigned)
                            {
                                //                            Console.WriteLine("    At {0}: Mapped directed equality: {1} := {2}", n, m1, m2);
                                n.dsa.definitelyAssignedMaps.insert(m1, m2);
                                n.dsa.assignedMaps.Add(m1);
                                dsaAssignedMap.insert(m1, m2);
                            }
                            else
                            {
                                dsaAssignedMap.insert(m1, m2);
                                dsaAssignedMap.insert(m2, m1);
                                //                            if (n.predecessors.All(p => nodeDSAInfo[p].maps.Contains(m1)) && n.predecessors.All(p => !nodeDSAInfo[p].maps.Contains(m2)))
                                //                            Console.WriteLine("    At {0}: Mapped undirected equality: {1} == {2}",n, m2, m1);
                            }
                        }
                    }
                    private void mapIfMapWrite(Node n, FunctionApplicationFormula t1fa, FunctionApplicationFormula t2fa)
                    {
                        if (t1fa.isConstant && t2fa.function.isMapWrite && t2fa.args[0].isConstant)
                        {
                            var m1 = t1fa.function;
                            var m2 = t2fa.args[0].asFunctionApplication.function;
                            n.dsa.definitelyAssignedMaps.insert(m1, m2);
                            n.dsa.assignedMaps.Add(m1);
                            dsaAssignedMap.insert(m1, m2);
                            //                    Console.WriteLine("    At {0}: Mapped definite assignment: {1} := MU({2})", n, m1, m2);
                        }
                    }

                    #region frame axioms
                    public void findPotentialFrameAxioms()
                    {
                        foreach (var c in cfg.rootNode.clauses)
                            classifyFrameAxiom(c);
                    }
                    private void classifyFrameAxiom(Clause c)
                    {
                        var mapReadEqualities = new HashSet<Literal>();
                        var twoHeapPredicates = new HashSet<Literal>();
                        foreach (var a in c.literals)
                            if (isQuantifiedMapQuantifiedReadEquality(a))
                                mapReadEqualities.Add(a);
                            else if (isTwoHeapPredicate(a))
                                twoHeapPredicates.Add(a);
                        if (mapReadEqualities.Count > 0)
                        {
                            foreach (var mre in mapReadEqualities)
                            {
                                var mreMaps = getQuantifiedMapReadMaps(mre);
                                var mapRead = mre.f.asEquality.t1.asFunctionApplication.function;
#if DEBUG
                                Slicer.log(2,"   Info: Found potential frame rule for {0}:\n    {1}\n    maps = {2}, {3}\n", mapRead.ToStringN(), c.ToStringBNoVars(), mreMaps[0], mreMaps[1]);
#endif
                                mapReadToFrameRuleMap.insert(mapRead, c);
                                mapTypeToFrameRuleMap.insert(mapRead.argumentTypes[0], c);
                                ISet<Predicate> potentialPredicates = new HashSet<Predicate>();
                                var mapType = mreMaps[0].type;
                                foreach (var thp in twoHeapPredicates)
                                {
                                    var args = thp.f.asPredicateApplication.args;
                                    for (var i = 0; i < args.Count() - 1; i++)
                                        for (var j = i + 1; j < args.Count(); j++)
                                            if (args[i].type.isEquivalent(mapType) && args[j].type.isEquivalent(mapType))
                                            {
                                                var pa = thp.f.asPredicateApplication;
                                                var predicate = pa.predicate;
                                                var trigger = new PredicateFrameRuleTrigger(predicate, i, j);
                                                predicateToFrameRuleMap.insert3(predicate, trigger, c);
                                                potentialPredicates.Add(thp.f.asPredicateApplication.predicate);
                                            }

                                }
                                if (potentialPredicates.Any())
                                {
#if DEBUG
                                    Slicer.log(2,"      Potential predicates:{0}", Operator.commaSeparatedList(from p in potentialPredicates select p.name));
#endif
                                }
                            }
                        }
                    }
                    private static LVar[] getQuantifiedMapReadMaps(Literal mre)
                    {
                        return new[]{
                mre.f.asEquality.t1.asFunctionApplication.args[0].asVariable.variable,
                mre.f.asEquality.t2.asFunctionApplication.args[0].asVariable.variable
            };
                    }
                    private static ISet<LVar> getTwoHeapPredicateMaps(Literal mre)
                    {
                        return new HashSet<LVar>(from t in mre.f.asPredicateApplication.args where t.isVariable where t.type.isMapType select t.asVariable.variable);
                    }
                    private static IEnumerable<LVar[]> getMatchingMapPairs(ISet<LVar> thpMapss)
                    {
                        var result = new List<LVar[]>();
                        var mapssA = thpMapss.ToArray();
                        for (var i = 0; i < mapssA.Length - 1; i++)
                            for (var j = i + 1; j < mapssA.Length - 1; j++)
                                if (mapssA[i].type.isEquivalent(mapssA[j].type))
                                    result.Add(new[] { mapssA[i], mapssA[j] });
                        return result;
                    }
                    private static bool isTwoHeapPredicate(Literal a)
                    {
                        if (!a.f.isPredicateApplication)
                            return false;
                        var heapVars = new HashSet<LVar>(
                            from t in a.f.asPredicateApplication.args
                            where t.isVariable
                            where t.asVariable.type.isMapType
                            select t.asVariable.variable);
                        return heapVars.Count >= 2;
                    }
                    private static bool isQuantifiedMapQuantifiedReadEquality(Literal a)
                    {
                        return
                            isMapQuantifiedReadEquality(a) &&
                            a.f.asEquality.t1.asFunctionApplication.args[0].isVariable &&
                            a.f.asEquality.t2.asFunctionApplication.args[0].isVariable;
                    }
                    private static bool isMapQuantifiedReadEquality(Literal a)
                    {
                        if (!isMapReadEquality(a))
                            return false;
                        var indices1 = a.f.asEquality.t1.asFunctionApplication.args.Skip(1).ToArray();
                        var indices2 = a.f.asEquality.t1.asFunctionApplication.args.Skip(1).ToArray();

                        return indices1.SequenceEqual(indices2);

                    }
                    private static bool isMapReadEquality(Literal a)
                    {
                        return
                            a.polarity &&
                            a.f.isEquality &&
                            a.f.asEquality.args[0].isFunctionApplication &&
                            a.f.asEquality.args[0].asFunctionApplication.function.isMapRead &&
                            a.f.asEquality.args[1].isFunctionApplication &&
                            a.f.asEquality.args[1].asFunctionApplication.function.isMapRead &&
                            a.f.asEquality.args[0].asFunctionApplication.function == a.f.asEquality.args[1].asFunctionApplication.function;
                    }
                    #endregion frame axioms

                    public class PredicateFrameRuleTrigger
                    {
                        public PredicateFrameRuleTrigger(Predicate p, int a1, int a2)
                        {
                            this.p = p;
                            this.a1 = a1;
                            this.a2 = a2;
                            this.str = p.name + "[" + a1 + "," + a2 + "]";
                        }
                        public readonly Predicate p;
                        public readonly int a1;
                        public readonly int a2;
                        public readonly string str;
                        public override string ToString()
                        {
                            return str;
                        }

                        public override bool Equals(object obj)
                        {
                            return obj is PredicateFrameRuleTrigger && obj.ToString() == ToString();
                        }
                        public override int GetHashCode()
                        {
                            return str.GetHashCode();
                        }
                    }

                    public readonly IDictionary<Function, ISet<Clause>> mapReadToFrameRuleMap = new Dictionary<Function, ISet<Clause>>();
                    public readonly IDictionary<IType, ISet<Clause>> mapTypeToFrameRuleMap = new Dictionary<IType, ISet<Clause>>();
                    public readonly IDictionary<Predicate, IDictionary<PredicateFrameRuleTrigger, ISet<Clause>>> predicateToFrameRuleMap = new Dictionary<Predicate, IDictionary<PredicateFrameRuleTrigger, ISet<Clause>>>();
                    //            private readonly IDictionary<Node, DSAInfo> nodeDSAInfo = new Dictionary<Node, DSAInfo>();
                    private readonly CFG cfg;

                    public readonly IDictionary<Function, ISet<Function>> dsaAssignedMap = new Dictionary<Function, ISet<Function>>();
                    public readonly ISet<Function> maps = new HashSet<Function>();

                }
                public void calculateDSAPass1()
                {
                    if (!Universe.extraDSATermsKnob)
                        return;
                    var calculator = new DSAPass1(this);
                    calculator.findPotentialFrameAxioms();
                    applyForward(calculator, false);

                    foreach (var m in calculator.maps.Except(calculator.dsaAssignedMap.Keys))
                        if (!rootNode.dsa.maps.Contains(m))
                        {
#if DEBUG
                            Slicer.log(1,"    Info: Orphan DSA map {0}", m.ToStringB());
#endif
                        }
                }

                public class DSAPass2 : BackwardVisitor
                {
                    public void atEnd() { }
                    public void refuted(Node n) { }
                    public void apply(Node n)
                    {
                        if (!n.predecessors.Any())
                            return;

                        if (Universe.extraNonGoalTermsKnob)
                        {
                            n.xtraGroundTerms.UnionWith(from s in n.successors from xt in s.xtraGroundTerms where n.inScope(xt) select xt);
                            n.dsa.groundMapTerms.UnionWith(from s in n.successors from t in s.dsa.groundMapTerms where n.inScope(t) select t);
                        }
                        if (Universe.extraGoalTermsKnob)
                        {
                            n.xtraGoalGroundTerms.UnionWith(from s in n.successors from xt in s.xtraGoalGroundTerms where n.inScope(xt) select xt);
                            n.dsa.groundMapGoalTerms.UnionWith(from s in n.successors from t in s.dsa.groundMapGoalTerms where n.inScope(t) select t);
                        }


                        mapLocalMapTerms(n);
                        foreach (var t in n.xtraGroundTerms)
                            mapLocalMapTerms(n, t, false);
                        foreach (var t in n.xtraGoalGroundTerms)
                            mapLocalMapTerms(n, t, true);

                        if (Universe.extraNonGoalTermsKnob)
                            addDSAVariats(n, n.dsa.groundMapTerms, false);
                        //                foreach (var t in n.dsaInfo.groundMapTerms)
                        //                    addDSAVariants(n, t,false);
                        if (Universe.extraGoalTermsKnob)
                            addDSAVariats(n, n.dsa.groundMapGoalTerms, true);
                        //foreach (var t in n.dsaInfo.groundMapGoalTerms)
                        //    addDSAVariants(n, t, true);

                    }
                    private void mapLocalMapTerms(Node n)
                    {
                        foreach (var c in n.clauses)
                            foreach (var a in c.literals)
                                foreach (var t in a.f.subTerms)
                                    mapLocalMapTerms(n, t, n.isGoal);
                    }
                    private void mapLocalMapTerms(Node n, ITerm t, bool isGoal)
                    {
                        foreach (var st in t.subTerms)
                            mapLocalMapTerms(n, st, isGoal);
                        if (!t.isGround)
                            return;
                        var fa = t as FunctionApplicationFormula;
                        if (fa == null)
                            return;
                        if (fa.function.isMapRead)
                            if (isGoal)
                                n.dsa.groundMapGoalTerms.Add(fa);
                            else
                                n.dsa.groundMapTerms.Add(fa);

                    }

                    private void addDSAVariats(Node n, IEnumerable<FunctionApplicationFormula> ts, bool isGoal)
                    {
                        var todoTerms = new Queue<FunctionApplicationFormula>(ts);
                        while (todoTerms.Any())
                        {
                            var t = todoTerms.Dequeue();
                            addDSAVariants(n, t, isGoal, todoTerms);
                        }
                    }

                    private void addDSAVariants(Node n, ITerm t, bool isGoal, Queue<FunctionApplicationFormula> todo)
                    {
                        foreach (var st in t.subTerms)
                            addDSAVariants(n, st, isGoal, todo);
                        var fa = t as FunctionApplicationFormula;
                        if (fa == null)
                            return;

                        if (fa.function.isMapRead)
                        {
                            var mt = fa.args[0];
                            if (mt.isConstant)
                            {
                                var m = mt.asFunctionApplication.function;
                                ISet<Function> mapVariants;
                                if (n.dsa.tryGetVariants(m, out mapVariants))
                                {
                                    var args1Variants = getDSAVariants(n, fa.args.Skip(1));
                                    foreach (var v in mapVariants)
                                        foreach (var args1V in args1Variants)
                                        {
                                            var nt = new FunctionApplicationFormula(fa.function, new[] { new FunctionApplicationFormula(v, new ITerm[0]) }.Concat(args1V));
                                            if (isGoal)
                                            {
                                                if (n.xtraGoalGroundTerms.Add(nt))
                                                    todo.Enqueue(nt);
                                            }
                                            else
                                            {
                                                if (n.xtraGroundTerms.Add(nt))
                                                    todo.Enqueue(nt);
                                            }
                                        }
                                }
                            }
                        }
                    }

                    private IEnumerable<IEnumerable<ITerm>> getDSAVariants(Node n, IEnumerable<ITerm> ts)
                    {
                        var vSets = (from t in ts select getDSAVariants(n, t)).ToArray();
                        return FU.makeOptions(vSets);
                    }

                    private ISet<ITerm> getDSAVariants(Node n, ITerm t)
                    {
                        if (t.isVariable || t.isConstant)
                            return new HashSet<ITerm> { t };
                        var fa = t.asFunctionApplication;
                        ISet<Function> e;
                        if (fa.function.isMapRead && fa.args[0].isConstant && n.dsa.tryGetVariants(fa.args[0].asFunctionApplication.function, out e))
                        {
                            var m = fa.args[0].asFunctionApplication.function;
                            var args1Variants = getDSAVariants(n, fa.args.Skip(1));
                            return new HashSet<ITerm>(
                                from a0 in e.Union(new[] { m })
                                from a1 in args1Variants
                                select new FunctionApplicationFormula(fa.function, new[] { new FunctionApplicationFormula(a0, new ITerm[0]) }.Concat(a1))
                            );
                        }
                        else
                        {
                            var argsVariants = getDSAVariants(n, fa.args);
                            if (argsVariants.Count() == 1)
                                return new HashSet<ITerm> { t };
                            else
                                return new HashSet<ITerm>(from a in argsVariants select new FunctionApplicationFormula(fa.function, a));
                        }
                    }

                }
                public void calculateDSAPass2()
                {
                    if (!Universe.extraDSATermsKnob)
                        return;
                    var calculator = new DSAPass2();
                    applyBackwards(calculator);
                }
                #endregion DSA

                #region UniverseForwardVisitor
                abstract class UniverseVisitor : Visitor
                {
                    public static bool logMe(Node n) { return n != null && n.universe != null && n.universe.index == -74; }
                    public static void printStatusIf(Node n, String status)
                    {
                        if (logMe(n))
                            Console.WriteLine("{0}.{1}", n.universe.index, status);
                    }
                    public UniverseVisitor(CFG cfg)
                    {
                        this.cfg = cfg;
                    }
                    public abstract void apply(Node n);
                    protected VisitorProgress progress = new VisitorProgress();
                    protected readonly CFG cfg;
                    public abstract void atEnd();

                    public virtual void refuted(Node n) { }
                    public void saturateNode(Node n)
                    {
                        var u = n.universe;

                        if (n.isValid && u.needSync)
                            u.synchronize(true);

                        if (n.isValid)
                            if (Universe.isSPPass)
                                u.saturateSuperpositionOnce();
                            else
                                saturateEqNeq(n);

                        if (n.isValid && u.needSync)
                            u.synchronize(true);
                    }
                    private static void saturateEqNeq(Node n)
                    {
                        var u = n.universe;
                        //                        while (n.isValid && (u.anyMergeToDo || u.anyNonEqToDo))
                        //                        {
                        while (n.isValid && u.anyMergeToDo)
                            n.universe.mergeOnce();
                        if (n.isValid && u.anyNonEqToDo)
                            n.universe.saturateNonEqualityOnce(); //TODO: Only one non-ground
                                                                  //                      }
                    }
                    protected void refutedCleanupBackwards(Node n)
                    {
                        Debug.Assert(n.isRefuted || n.universe.isRefuted);
                        n.refute("");

                        var todoBackward = new Queue<Node>();
                        foreach (var p in n.predecessors.ToList())
                        {
                            p.removeOutgoingEdge(n);
                            if (p != cfg.rootNode && !p.isGoal && p.successors.Count == 0)
                                todoBackward.Enqueue(p);
                        }
                        while (todoBackward.Count > 0)
                        {
                            var rn = todoBackward.Dequeue();
                            Debug.Assert(rn.successors.Count == 0);
                            Debug.Assert(!rn.isGoal);
                            Debug.Assert(rn != cfg.rootNode);
                            foreach (var p in rn.predecessors.ToList())
                            {
                                p.removeOutgoingEdge(rn);
                                if (p != cfg.rootNode && !p.isGoal && p.successors.Count == 0)
                                    todoBackward.Enqueue(p);
                            }
                            //                        rn.refute();
                            rn.remove();
                        }
                    }

                }
                abstract class UniverseForwardVisitor : UniverseVisitor, ForwardVisitor
                {
                    public UniverseForwardVisitor(CFG cfg)
                        : base(cfg)
                    {
                    }



                    static bool nodesNeedMerge(Node n, IEnumerable<Node> nodes)
                    {
                        return nodes.Any(pn => pn != n && pn.universe != null && !pn.universe.isRefuted && (pn.universe.anyMergeToDo || pn.universe.needEqSync));
                    }
                    internal static bool nodesNeedMerge(IEnumerable<Node> nodes)
                    {
                        foreach (var n in nodes)
                            if (!n.isRefuted)
                            {
                                var u = n.universe;
                                if (u != null && !u.isRefuted && (u.anyMergeToDo || u.needEqSync))
                                    return true;
                            }
                        return false;
                    }
                    protected ISet<Node> satBack(Node on)
                    {
                        var result = getNodeReach(on);
                        var todo = new Queue<Node>();
                        todo.Enqueue(on);
                        var done = new HashSet<Node>();
                        while (todo.Any())
                        {
                            var n = todo.Dequeue();
                            Debug.Assert(result.Contains(n));
                            Debug.Assert(!done.Contains(n));
                            /*                    if (n.universe.anyThingToDo)
                                                {
                                                    Console.WriteLine("      SatBackward {0}", n.universe);
                                                    n.universe.saturate();
                                                    Console.WriteLine("         {0}", n.universe.statString2);
                                                }
                              */
                            done.Add(n);
                            foreach (var pn in n.predecessors)
                                if (!pn.isRefuted && pn.successors.All(sn => sn.isRefuted || !result.Contains(sn) || done.Contains(sn)))
                                {
                                    Debug.Assert(!done.Contains(pn));
                                    Debug.Assert(result.Contains(pn));
                                    Debug.Assert(!todo.Contains(pn));
                                    todo.Enqueue(pn);
                                }
                        }
                        Debug.Assert(done.Count == result.Count);
                        return result;
                    }

                    public override void atEnd()
                    {
                        //                var merge = true;
                        //                synchAll(cfg,this,merge);
                    }//void atEnd()
                }
                #endregion UniverseForwardVisitor

                #region build
                class UniverseBuilder : UniverseForwardVisitor
                {
                    public UniverseBuilder(CFG cfg)
                        : base(cfg)
                    {
                    }
                    public override void apply(Node nn)
                    {

                        #region preconditions
#if DEBUG
                        Debug.Assert(nn.universe == null);
                        Debug.Assert(!nn.isRefuted);
                        foreach (var pn in nn.predecessors)
                            Debug.Assert(!pn.isRefuted && pn.universe != null && !pn.universe.isRefuted);
                        //                Debug.Assert(nn.predecessors.All(p=>!p.isRefuted));
#endif
                        #endregion preconditions

                        #region make empty universe
                        Node n = nn;
                        if (nn.predecessors.Count == 0)
                        {
                            if (n == cfg.rootNode)
                            {
                                #region make empty universe
                                Debug.Assert(n == cfg.rootNode);
                                Debug.Assert(cfg.termRepository != null);
                                nn.setUniverse(new RU(cfg.srs, cfg.termRepository));
#if DEBUG
                                Console.WriteLine("  ===Adding {2,-16} at [{0,-3}]{1,-50}", nn.index, nn, nn.universe);
#endif
                                #endregion make empty universe
                            }
                            else
                            {
                                n.refute("unreachable");
#if DEBUG
                                Console.WriteLine("  ===Skipping Node Infeasible n[{0,-3}]: {1}", nn.index, nn, nn.universe);
#endif
                            }
                        }
                        else if (nn.predecessors.Count == 1)
                        {
                            #region make clone universe
                            var pred = nn.predecessors.First();
                            if (pred.successors.Count == 1 && !nn.isGoal)
                            {
                                pred.cfg.compressBasicBlock(pred, nn);
                                n = pred;
#if DEBUG
                                Console.WriteLine("  ===Adding {0,-16} at [{3,-3}]{1,50} Compress from [{4,-3}]{2,50}", n.universe, nn, n, nn.index, n.index);
#endif
                            }
                            else
                            {
                                nn.setUniverse( new SU(pred.universe));
#if DEBUG
                                Console.WriteLine("  ===Adding Node {2,-16} at [{0,-3}]{1,-50}", nn.index, nn, nn.universe);
#endif
                            }
                            #endregion make clone universe
                        }
                        else
                        {
                            #region join universe
                            nn.setUniverse(new JU(from p in nn.predecessors select p.universe));
#if DEBUG
                            Console.WriteLine("  ===Adding Node {2,-16} at [{0,-3}]{1,-50}", nn.index, nn, nn.universe);
#endif
                            #endregion join universe
                        }

                        if (!n.isRefuted)
                        {
                            if (n.isGoal)
                                n.universe.isGoalNode = true;
                            if (n.isKeyNode)
                                n.universe.isKeyNode = true;
                            n.universe.addToScope(nn.scope.constants);
                        }
                        #endregion make empty universe
                        if (!n.isRefuted)
                        {
                            n.universe.hasFrameRule = n.hasFrameRule;
                            if (n.universe.hasFrameRule)
                            {
                                n.universe.functionFrameMap = new Dictionary<Function, ISet<Function>>();
                                foreach (var kv in n.dsa.frameMaps)
                                {
                                    var f = n.scope.renameMap.getOrSame(kv.Key);
                                    foreach (var of2 in kv.Value)
                                    {
                                        var f2 = n.scope.renameMap.getOrSame(of2);
                                        if (f != f2)
                                            n.universe.functionFrameMap.insertUnion(f, f2);
                                    }
                                }
                                
                            }
                            #region assume clauses
                            if (n.isValid)
                            {
                                if (n.isGoal && nn.clauses.Count == 0)
                                {
                                    n.refute("no assertion");
                                } else
                                {
                                    n.universe.assumeOriginalClauses(nn.clauses, Universe.allClausesAreGoalsKnob || n.isGoal);
                                    if (n.isValid)
                                        saturateNode(n);
                                }
                            }
                            #endregion assume clauses

                            #region extra terms
                            if (n.universe != null && !n.universe.isRefuted)
                            {
                                if (Universe.extraNonGoalTermsKnob)
                                    foreach (var xt in nn.xtraGroundTerms)
                                        n.universe.makeExtraGT(xt, false);
                                if (Universe.extraGoalTermsKnob)
                                    foreach (var xgt in nn.xtraGoalGroundTerms)
                                        n.universe.makeExtraGT(xgt, true);
                                n.universe.saturate(true, true);
                            }
                            #endregion extra terms
                        }

                        #region report

#if DEBUG
                        if (n.isValid && n.universe.index == 0)
                        {
                            foreach (var fc in n.universe.assumedFCs)
                                Debug.WriteLine("AX:{0,3} FVs:{1,1} {2}", n.universe.index, fc.freeVariables.Count, fc.ToStringB());
                        }
//                    Console.WriteLine("    BU: {1}", n.index, n.isRefuted ? "refuted" : n.universe.statString2);
#endif
                        cfg.printPostNodePass(progress, n);
                        #endregion report

                        #region refuted cleanup
                        if (n.isRefuted || n.universe.isRefuted)
                            refutedCleanupBackwards(n);

                        #endregion refuted cleanup

                    }
                }

                public string gttString
                {
                    get
                    {

                        if (rootNode.universe == null)
                            return "";
                        var repGTTs = rootNode.universe.termRepository.gtts;
                        var us = (from n in nodes where !n.isRefuted where n.universe != null select n.universe);
                        var usedGTTs = FU.union(from u in us select u.allGTTs);
                        var allRGTTs = FU.union(from u in us select u.allRGTTs);
                        var allHGTTs = FU.union(from u in us select u.allMMGTTs.Except(u.allGTTs));

                        var usedGTs = FU.union(from u in us select u.allGTs);

                        var pairGTTs = new HashSet<GTT>(from gtt in repGTTs where gtt.Count == 2 && gtt.gtT[0].type.isEquivalent(gtt.gtT[1].type) select gtt);
                        var sPairGTTs = new HashSet<GTT>(from gtt in pairGTTs where gtt.gtT[0] == gtt.gtT[1] select gtt);
                        var iPairGTTs = new HashSet<GTT>(from gtt in sPairGTTs where gtt.gtT[0].type == IntegerType.integerType select gtt);

                        //var allGTTAs = FU.union(from u in us where u is JU let ju = u as JU select ju.allGTTAs);

                        var netRGTTs = Enumerable.Except<GTT>(allRGTTs, (IEnumerable<GTT>)usedGTTs);
                        var netHGTTs = allHGTTs.Except(usedGTTs);

                        var rnhGTTs = allHGTTs.Intersect(allRGTTs).Except(usedGTTs);

                        var allIGTTs = us.Aggregate(0, (x, u) => x + u.allMMGTTs.Count);
                        var usedIGTTs = us.Aggregate(0, (x, u) => x + u.allGTTs.Count());
                        var allIRGTTs = us.Aggregate(0, (x, u) => x + u.allRGTTs.Count());

                        var allIGTs = us.Aggregate(0, (x, u) => x + u.allMMGTs.Count);
                        var usedIGTs = us.Aggregate(0, (x, u) => x + u.allGTs.Count());

                        /*
                                            var gttAllSGAFs = new Dictionary<GTT, ISet<GAF>>();
                                            var gttAllSGFAs = new Dictionary<GTT, ISet<GFA>>();
                                            foreach (var u in us)
                                                foreach (var gttdKV in u.gttData)
                                                    foreach (var gfa in gttdKV.Value.sgfas.Values)
                                                        gttAllSGFAs.insert(gttdKV.Key, gfa);

                                            var gttAllSGAFs = new Dictionary<GTT, ISet<GAF>>();
                                            foreach (var u in us)
                                                foreach (var gttdKV in u.gttData)
                                                    foreach (var gaf in gttdKV.Value.sgafs.Values)
                                                        gttAllSGAFs.insert(gttdKV.Key, gaf);
                                            var gttAllSGAFs = new Dictionary<GTT, ISet<GAF>>();
                                            foreach (var u in us)
                                                foreach (var gttdKV in u.gttData)
                                                    foreach (var gaf in gttdKV.Value.sgafs.Values)
                                                        gttAllSGAFs.insert(gttdKV.Key, gaf);

                                            var gttNumSGFAGAF = new Dictionary<GTT, int>();
                                            foreach (var gtt in repGTTs)
                                            {
                                                gttNumSGFAGAF[gtt] = 0;
                                                ISet<GFA> gfas;
                                                if (gttAllSGFAs.TryGetValue(gtt, out gfas))
                                                    gttNumSGFAGAF[gtt] += gfas.Count;
                                                ISet<GAF> gafs;
                                                if (gttAllSGAFs.TryGetValue(gtt, out gafs))
                                                    gttNumSGFAGAF[gtt] += gafs.Count;
                                            }

                                            var numGTTNumGAFsGFAs = new SortedDictionary<int, int>();
                                            foreach (var kv in gttNumSGFAGAF)
                                            {
                                                var c = kv.Value;
                                                if (!numGTTNumGAFsGFAs.ContainsKey(c))
                                                    numGTTNumGAFsGFAs[c] = 0;
                                                numGTTNumGAFsGFAs[c]++;
                                            }
                                            */
                        var gttAllGOAs = new Dictionary<GTT, ISet<IOperator>>();
                        foreach (var u in us)
                            foreach (var gttdKV in u.gttData)
                            {
                                var gtt = gttdKV.Key;
                                ISet<IOperator> os;
                                if (!gttAllGOAs.TryGetValue(gtt, out os))
                                    os = gttAllGOAs[gtt] = new HashSet<IOperator>();
                                var gttd = gttdKV.Value;
                                foreach (var kv in gttd.sgfas)
                                    os.Add(kv.Value.function);
                                foreach (var kv in gttd.sgafs)
                                    os.Add(kv.Key);
                            }

                        var allGTTsNum = gttAllGOAs.Count;
                        var allNZGTTsNum = (from kv in gttAllGOAs where kv.Value.Count > 0 select kv.Key).Count();
                        var allGOAsNum = gttAllGOAs.Values.Sum((x) => (double)x.Count);

                        var gfasPerGTT = allGOAsNum / allGTTsNum;
                        var gfasPerGTTNZ = allGOAsNum / allNZGTTsNum;
                        //                    var gfasPerGTT = gttAllGOAs.Count gttAllGOAs.Values.Sum((x) => (double)x.Count) / gttNumSGFAGAF.Count;
                        //                    var gfasPerGTTNZ = gttAllGOAs.Values.Sum((x) => (double)x.Count) / gttNumSGFAGAF.Values.Sum((x) => x > 0 ? 1 : 0);
                        //                gfasPerGTT ;

                        /*                var numGTTNumGFAsString = "";
                                        foreach (var kv in numGTTNumGAFsGFAs)
                                            numGTTNumGFAsString += kv.Key.ToString() + ":" + kv.Value.ToString() + " ";


                                        var a = (double)0;
                                        var s = (double)0;
                                        foreach (var kv in gttNumSGFAGAF)
                                            a += kv.Value;
                                        */

                        var gfabs = new HashSet<GFABase>();
                        var gfabis = 0;
                        var gts = new HashSet<GT>();
                        var gtis = 0;
                        var glis = 0;
                        var gcis = 0;
                        var gls = new HashSet<GL>();
                        var gcs = new HashSet<GC>();
                        foreach (var n in nodes)
                            if (n.universe!=null)
                            {
                                var u = n.universe;
                                foreach (var gt in u.allGTs)
                                {
                                    gtis++;
                                    gts.Add(gt);
                                    foreach (var gfa in gt.gfas)
                                    {
                                        gfabs.Add(gfa.b);
                                        gfabis += 1;
                                    }
                                }
                                foreach (var gc in u.allGCs)
                                {
                                    gcis++;
                                    gcs.Add(gc);
                                    foreach (var gl in gc.gls)
                                    {
                                        gls.Add(gl);
                                        glis++;
                                    }
                                }
                            }


                        var result = string.Format("gtts: a{0,6},u{1,6}  rgtts:a{2,5},n{3,5}  hgtts:a{4,6},n{5,6}  igtts:a{6,8},u{7,8},r{8,8} gt/:{9,5:N2} gtt/:{10,5:N2}, gfa/gtt:{11,4:N2}, gfa/gttNZ:{12,4:N2}",
                            repGTTs.Count, usedGTTs.Count, allRGTTs.Count, netRGTTs.Count(), allHGTTs.Count, netHGTTs.Count(), allIGTTs, usedIGTTs, (object)allIRGTTs, (double)usedIGTs / usedGTs.Count, (double)usedIGTTs / usedGTTs.Count, gfasPerGTT, gfasPerGTTNZ);//pairGTTs.Count,sPairGTTs.Count,iPairGTTs.Count);
                        result += string.Format(" gtts: a{0,6},u{1,6},r{2,6}", repGTTs.Count, usedGTTs.Count, allRGTTs.Count);
                        result += " GFAB i/T " +safeDiv(gfabis, gfabs.Count).ToString();
                        result += " GT i/T " + safeDiv(gtis, gts.Count).ToString();
                        result += " GL i/T " + safeDiv(glis, gls.Count).ToString();
                        result += " GC i/T " + safeDiv(gcis, gcs.Count).ToString();
                        return result;
                    }
                }
                public static int safeDiv(int x, int y)
                {
                    if (y == 0)
                        return 0;
                    return x / y;
                }
                public void cutCrap()
                {
                    var todo = new SortedList<int, Node>();
                    todo[rootNode.universe.index] = rootNode;
                    while (todo.Count > 0)
                    {
                        var n = todo.First().Value;
                        todo.RemoveAt(0);
                        Debug.Assert(n.isValid);
                        var u = n.universe;
                        Debug.Assert(!u.isRefuted);
                        u.cutCrap();
                        foreach (var sn in n.successors)
                            todo[sn.universe.index] = sn;
                    }
                }
                public void markSweepBackwards()
                {
                    if (!rootNode.isValid)
                        return;

                    #region consistency
#if DEBUG
                    foreach (var n in nodes)
                        if (n.universe != null)
                        {
                            Debug.Assert(n.universe.successorUsedGTs.Count == 0);
                            Debug.Assert(n.universe.successorUsedGTTs.Count == 0);
                        }
#endif
                    #endregion consistency

                    Slicer.log(2,"    MS:{0}", rootNode.universe.statString);
                    Slicer.log(2,gttString);
                    var frontier = new HashSet<Node>(
                        from n in nodes
                        where n.universe != null
                        where !n.isRefuted
                        where !n.universe.isRefuted
                        where n.successors.All(sn => sn.universe == null || sn.isRefuted || sn.universe.isRefuted) || n.successors.Count == 0
                        select n);
                    if (frontier.Count == 0)
                        return;

                    var done = new HashSet<Node>();
                    var doneUniverses = new HashSet<Universe>();
                    var todo = new Queue<Node>();
                    //            Debug.Assert(!UniverseForwardVisitor.nodesNeedMerge(nodes));
                    foreach (var n in frontier)
                        todo.Enqueue(n);
                    while (todo.Any())
                    {
                        var n = todo.Dequeue();
                        //                UniverseForwardVisitor.satEqs();

                        var successorsMarked = n.successors.All(sn => sn.universe != null);
                        if (!n.isRefuted && !n.universe.isRefuted && !doneUniverses.Contains(n.universe))
                        {
                            n.universe.markAndSweep(successorsMarked);
                            doneUniverses.Add(n.universe);
                        }
                        done.Add(n);
                        foreach (var pn in n.predecessors)
                            if (pn.successors.All(sn => sn.universe == null || sn.universe.isRefuted || sn.isRefuted || done.Contains(sn)))
                            {
                                if (!done.Contains(pn) && !todo.Contains(pn))
                                    todo.Enqueue(pn);
                            }
                    }
                    Debug.Assert(done.Contains(rootNode));

                    rootNode.universe.termRepository.sweepClean();
                    //#if DEBUG
                    //            printNodeSummary();
                    //#endif
                    Slicer.log(2,gttString);
                    Slicer.log(2,"    MS:{0}", rootNode.universe.statString);
                }

                public void buildUniverses()
                {
                    if (goalNodes.Count == 0)
                        return;
                    applyForward(new UniverseBuilder(this), true);
                    Debug.Assert(nodes.All(n => n.universe != null));
                }

                #endregion build

                #region saturate forward
                class UniverseSaturator : UniverseForwardVisitor
                {
                    public UniverseSaturator(CFG cfg)
                        : base(cfg)
                    { }

                    public override void apply(Node n)
                    {
                        #region preconditions
                        Debug.Assert(n.universe != null);
                        Debug.Assert(!n.isRefuted);
                        Debug.Assert(!n.universe.isRefuted);
                        //                Debug.Assert(n==n.cfg.rootNode || n.predecessors.Any());
                        Debug.Assert(n.predecessors.All(p => !p.isRefuted && p.universe != null));
                        #endregion preconditions

                        #region saturate stage
                        if (!n.isUniverseMine)
                            return;
                        if (n != cfg.rootNode && n.predecessors.Count == 0)
                        {
                            //#if DEBUG
                            Slicer.log(1,"   Trimming universe {1,-16} at {0,-50}", n, n.universe);
                            //#endif
                            n.refute("unreachable");
                        }
                        else
                        {
                            Slicer.log(1,"   Saturating{2} universe {1,-16} at {0,-50}", n, n.universe, (Universe.isSPPass) ? "[SP]" : "[IN]");
                            saturateNode(n);
                        }
                        #endregion saturate stage

                        #region report
                        cfg.printPostNodePass(progress, n);
                        #endregion report

                        #region refuted cleanup
                        if (n.isRefuted || n.universe.isRefuted)
                            refutedCleanupBackwards(n);
                        else
                        {
                            var ps = n.predecessors.ToList();
                            var todoBackward = new Queue<Node>();
                            foreach (var p in ps)
                                if (p.isRefuted)
                                {
                                    p.successors.Remove(n);
                                    n.predecessors.Remove(p);
                                    if (p != n.cfg.rootNode && !p.successors.Any())
                                        todoBackward.Enqueue(p);
                                }
                            while (todoBackward.Any())
                            {
                                var rn = todoBackward.Dequeue();
                                Debug.Assert(rn.isRefuted || (!rn.isGoal && !rn.successors.Any()));
                                foreach (var p in rn.predecessors)
                                {
                                    p.successors.Remove(rn);
                                    if (p != n.cfg.rootNode && !p.successors.Any() && (!p.isGoal || p.isRefuted))
                                        todoBackward.Enqueue(p);
                                }
                                rn.remove();
                            }
                        }
                        #endregion refuted cleanup
                    }

                }
                public void saturateUniversesForward()
                {
                    if (!goalNodes.Any())
                        return;

                    applyForward(new UniverseSaturator(this), true);
                }
                #endregion saturate forward

                #region saturate backward
                abstract class UniverseBackwardVisitor : UniverseVisitor, BackwardVisitor
                {
                    public UniverseBackwardVisitor(CFG cfg)
                        : base(cfg)
                    { }
                }
                class UniverseBackwardSaturator : UniverseBackwardVisitor
                {
                    public UniverseBackwardSaturator(CFG cfg)
                        : base(cfg)
                    { }

                    public override void atEnd()
                    {
                        if (cfg.rootNode.isValid)
                            cfg.rootNode.universe.termRepository.sweepClean();
                    }
                    public override void refuted(Node n) { if (n.isGoal) progress.refutedGoal(n); }
                    public override void apply(Node n)
                    {
                        Debug.Assert(n.isValid);
                        Debug.Assert(n == cfg.rootNode || n.isGoal || n.successors.Count > 0);
                        Debug.Assert(n == cfg.rootNode || n.predecessors.Count > 0);

                        #region preconditions
                        Debug.Assert(n.universe != null);
                        Debug.Assert(n.isValid);
                        Debug.Assert(n.predecessors.All(p => p.isValid));
                        #endregion preconditions

                        #region saturate stage
                        if (!n.isUniverseMine)
                            return;
#if DEBUG
                        Console.WriteLine("   Saturating backwards universe {1,-16} at {0,-50}", n, n.universe);
                        Debug.  WriteLine("   Saturating backwards universe {1,-16} at {0,-50}", n, n.universe);
#endif
                        var u = n.universe;
                        #region backward stuff

                        if (n.isValid)
                            u.synchronize(false);
//                            if (n.isValid)
//                                u.saturateSuperpositionOnce();
                        if (n.isValid)
                            u.saturateNonEqualityOnce();
//                        if (n.isValid)
//                            u.markAndSweep(true);
//                            if (n.isValid && u.needSync)
//                                u.synchronizeAndSaturate(false, false);
                        #endregion backward stuff
                        if (u.isRefuted)
                            n.refute(n.universe.refuteReason);
                        #endregion saturate stage
                        #region report
                        cfg.printPostNodePass(progress, n);
                        #endregion report
                    }
                }
                public void saturateUniversesBackward()
                {
                    if (!goalNodes.Any())
                        return;

                    applyBackwards(new UniverseBackwardSaturator(this));
                }
                #endregion saturate forward

                #region heaps
                public void SaturateMRs()
                {
                    if (!goalNodes.Any())
                        return;
                    Slicer.log(1, "   Saturating MRs backward");
                    applyBackwards(new UniverseMRBackwardSaturator(this));
                    Slicer.log(1, "   Saturating MRs forward");
                    applyForward(new UniverseMRForwardSaturator(this),false);
                }
                class UniverseMRBackwardSaturator : UniverseBackwardVisitor
                {
                    public UniverseMRBackwardSaturator(CFG cfg)
                        : base(cfg)
                    { }

                    public override void atEnd()
                    {
//                        if (cfg.rootNode.isValid)
//                            cfg.rootNode.universe.termRepository.sweepClean();
                    }
                    public override void refuted(Node n) { if (n.isGoal) progress.refutedGoal(n); }
                    public override void apply(Node n)
                    {
                        #region preconditions
                        Debug.Assert(n.isValid);
                        Debug.Assert(n == cfg.rootNode || n.isGoal || n.successors.Count > 0);
                        Debug.Assert(n == cfg.rootNode || n.predecessors.Count > 0);
                        Debug.Assert(n.universe != null);
                        Debug.Assert(!n.isRefuted);
                        Debug.Assert(!n.universe.isRefuted);
                        Debug.Assert(n.predecessors.All(p => p.isValid));
                        Debug.Assert(n.predecessors.All(p => !p.isRefuted && p.universe != null));
                        #endregion preconditions

                        #region saturate stage
                        if (!n.isUniverseMine)
                            return;
                        if (n != cfg.rootNode && n.predecessors.Count == 0)
                        {
                            //#if DEBUG
                            Console.WriteLine("   Trimming universe {1,-16} at {0,-50}", n, n.universe);
                            //#endif
                            n.refute("unreachable");
                        }
                        else
                        {
                            Slicer.log(1,"   Saturating MR backwards universe {1,-16} at {0,-50}", n, n.universe);
                            var u = n.universe;
//                            if (n.isValid)
//                                u.synchronize(true);
                            if (n.isValid)
                                u.propagateMapReadsDown();
                            if (n.isValid)
                                u.mergeOnce();
                            if (u.isRefuted)
                                n.refute(n.universe.refuteReason);
                        }
                        #endregion saturate stage

                        #region refuted cleanup
                        /*                        if (n.isRefuted || n.universe.isRefuted)
                                                { }// refutedCleanupBackwards(n);
                                                else
                                                {
                                                    var ps = n.predecessors.ToList();
                                                    var todoBackward = new Queue<Node>();
                                                    foreach (var p in ps)
                                                        if (p.isRefuted)
                                                        {
                                                            p.successors.Remove(n);
                                                            n.predecessors.Remove(p);
                                                            if (p != n.cfg.rootNode && !p.successors.Any())
                                                                todoBackward.Enqueue(p);
                                                        }
                                                    while (todoBackward.Any())
                                                    {
                                                        var rn = todoBackward.Dequeue();
                                                        Debug.Assert(rn.isRefuted || (!rn.isGoal && !rn.successors.Any()));
                                                        foreach (var p in rn.predecessors)
                                                        {
                                                            p.successors.Remove(rn);
                                                            if (p != n.cfg.rootNode && !p.successors.Any() && (!p.isGoal || p.isRefuted))
                                                                todoBackward.Enqueue(p);
                                                        }
                                                        rn.remove();
                                                    }
                                                }*/
                        #endregion refuted cleanup

                        #region report
                        cfg.printPostNodePass(progress, n);
                        #endregion report
                    }
                }
                class UniverseMRForwardSaturator : UniverseForwardVisitor
                {
                    public UniverseMRForwardSaturator(CFG cfg)
                        : base(cfg)
                    { }

                    public override void refuted(Node n) { if (n.isGoal) progress.refutedGoal(n); }
                    public override void apply(Node n)
                    {
                        #region preconditions
                        Debug.Assert(n.isValid);
                        Debug.Assert(n.universe != null);
                        Debug.Assert(n.predecessors.All(p => p.isValid));
                        #endregion preconditions

                        #region saturate stage
                        if (!n.isUniverseMine)
                            return;
                        var u = n.universe;
                        
                        if (n != cfg.rootNode && n.predecessors.Count == 0)
                        {
                            //#if DEBUG
                            Slicer.log(1,"   Trimming universe {1,-16} at {0,-50}", n, n.universe);
                            //#endif
                            n.refute("unreachable");
                        }
                        else
                        {
                            #region actual work
                            Debug.Assert(n == cfg.rootNode || n.isGoal || n.successors.Count > 0);
                            Slicer.log(1,"   Saturating MR forwards universe {1,-16} at {0,-50}", n, n.universe);
                            try
                            {
                                if (n.isValid)
                                    u.synchronize(true);
                                //                            if (n.isValid)
                                //                                u.saturateSuperpositionOnce();
                                if (n.isValid)
                                    u.propagateMapReadsUp();
                                if (n.isValid)
                                    u.mergeOnce();
                                if (n.isValid)
                                    u.saturateNonEqualityOnce();
                                if (n.isValid)
                                    u.mergeOnce();
                            }catch(RefuteException e)
                            {
                                n.refute(e.why);
                            }
    //                        if (n.isValid)
    //                            u.markAndSweep(true);
    //                            if (n.isValid && u.needSync)
    //                                u.synchronizeAndSaturate(false, false);
                            #endregion
                        }
                        #endregion saturate stage

                        #region report
                        cfg.printPostNodePass(progress, n);
                        #endregion report

                        #region refuted cleanup
                        if (n.isRefuted || n.universe.isRefuted)
                            refutedCleanupBackwards(n);
                        else
                        {
                            var ps = n.predecessors.ToList();
                            var todoBackward = new Queue<Node>();
                            foreach (var p in ps)
                                if (p.isRefuted)
                                {
                                    p.successors.Remove(n);
                                    n.predecessors.Remove(p);
                                    if (p != n.cfg.rootNode && !p.successors.Any())
                                        todoBackward.Enqueue(p);
                                }
                            while (todoBackward.Any())
                            {
                                var rn = todoBackward.Dequeue();
                                Debug.Assert(rn.isRefuted || (!rn.isGoal && !rn.successors.Any()));
                                foreach (var p in rn.predecessors)
                                {
                                    p.successors.Remove(rn);
                                    if (p != n.cfg.rootNode && !p.successors.Any() && (!p.isGoal || p.isRefuted))
                                        todoBackward.Enqueue(p);
                                }
                                rn.remove();
                            }
                        }
                        #endregion refuted cleanup

                    }
                }
                #endregion

                #region key nodes
                class KeyNodeFinder : BackwardVisitor
                {
                    private static int curClass = 0;
                    public void atEnd() { }
                    private void newClass(Node nn)
                    {
                        nn.keyClass = curClass;
                        curClass++;
                        nn.isKeyNode = true;
                        //                nn.universe.isKeyNode = true;
                    }
                    public void refuted(Node n) { }
                    public void apply(Node nn)
                    {
                        if (nn.isGoal)
                        {
                            Debug.Assert(nn.successors.Count == 0);
                            newClass(nn);
                            return;
                        }
                        else if (nn.successors.Count == 1)
                        {
                            nn.keyClass = nn.successors.First().keyClass;
                        }
                        else
                        {
                            Debug.Assert(nn.successors.Count > 1);
                            if (nn.successors.All(s => s.keyClass == nn.successors.First().keyClass))
                                nn.keyClass = nn.successors.First().keyClass;
                            else
                                newClass(nn);
                        }
                    }
                }
                public void calculateKeyNodes()
                {
                    if (!goalNodes.Any())
                        return;
                    var keyClasser = new KeyNodeFinder();
                    applyBackwards(keyClasser);
                }
                #endregion key nodes

                #endregion analyzers

                #region members
                public readonly IDictionary<Predicate, CFG.Node> nodeMap = new Dictionary<Predicate, Node>();
                public readonly IDictionary<string, CFG.Node> nodeMapS = new Dictionary<string, Node>();
                public readonly ISet<Node> goalNodes = new HashSet<Node>();
                public readonly ISet<Node> nodes = new HashSet<Node>();
                public readonly Node rootNode;

                public readonly ISRS srs;

                private int numEqsDEqs(Universe u)
                {
                    var c = 0;
                    var gdes = 0;
                    foreach (var gt in u.allGTs)
                    {
                        c += gt.gfas.Length - 1;
                        gdes += u.getGTDisequalities(gt).Count;
                    }
                    c += gdes / 2;
                    return c;

                }
                private int numClauses(Universe u)
                {
                    return u.assumedClauses.Count + numEqsDEqs(u);
                }
                private int numAtoms(Universe u)
                {
                    return (from cc in u.assumedClauses select cc.ils.Count).Sum()+numEqsDEqs(u);
                }
                public void getClauseAndAtomCounts(out int ncs,out int nas)
                {
                    if (rootNode.universe!=null)
                    {
                        ncs = (from n in nodes where !n.isRefuted where n.universe != null select numClauses(n.universe)).Sum();
                        nas = (from n in nodes where !n.isRefuted where n.universe != null select numAtoms(n.universe)).Sum();
                    }else
                    {
                        ncs = (from n in nodes where !n.isRefuted select n.clauses.Count).Sum();
                        nas = (from n in nodes where !n.isRefuted from c in n.clauses select c.literals.Count).Sum();
                    }

                }
                
                #endregion members

                #region graph construction
                internal void trim()
                {
                    var todo = new Queue<Node>();
                    foreach (var n in nodes)
                        if (!n.successors.Any() && !n.isGoal && n != rootNode)
                            todo.Enqueue(n);
                    while (todo.Any())
                    {
                        var n = todo.Dequeue();
                        Debug.Assert(nodes.Contains(n));
                        var ps = n.predecessors.ToList();
                        foreach (var p in ps)
                        {
                            p.removeOutgoingEdge(n);
                            if (!p.isGoal && p != rootNode && p.successors.Count == 0)
                                todo.Enqueue(p);
                        }
                        n.remove();
                    }
                }
                class NodeComparer : IComparer<Node>
                {
                    public int Compare(Node x, Node y)
                    {
                        return x.universe.index.CompareTo(y.universe.index);
                    }
                }
                internal static bool nodesNeedEqSync(IEnumerable<Node> nodes)
                {
                    foreach (var n in nodes)
                        if (!n.isRefuted)
                        {
                            var u = n.universe;
                            if (u != null && !u.isRefuted && (u.needEqSync))
                                return true;
                        }
                    return false;
                }
                public ISet<Node> propagateRefute(VisitorProgress v, Node on)
                {
                    var removedNodes = new HashSet<Node>();
                    Debug.Assert(on.universe.isRefuted);
                    var todo = new Queue<Node>();
                    todo.Enqueue(on);
                    while (todo.Any())
                    {
                        var n = todo.Dequeue();
                        Debug.Assert(n.universe.isRefuted);
#if DEBUG
                        Slicer.log(1,"   Trimming universe at {0} : {1}", n, n.universe);
#endif
                        printPostNodePass(v, n);
                        n.refute("unreachable");
                        removedNodes.Add(n);
                        Debug.Assert(n.isRefuted);
                        Debug.Assert(n.universe == null);
                        foreach (var pn in n.predecessors.ToList())
                        {
                            pn.removeOutgoingEdge(n);
                            if (!pn.isGoal && pn.successors.Count == 0)
                            {
                                Debug.Assert(!pn.isRefuted);
                                pn.universe.refuteInt("non goal no successors");
                                todo.Enqueue(pn);
                            }
                        }
                        foreach (var sn in n.successors.ToList())
                        {
                            n.removeOutgoingEdge(sn);
                            if (sn.predecessors.Count == 0)
                            {
                                Debug.Assert(!sn.isRefuted);
                                sn.universe.refuteInt("all predecessors refuted");
                                todo.Enqueue(sn);
                            }
                        }
                        n.remove();
                    }
                    return removedNodes;
                }
                public void syncAll(VisitorProgress v, bool merge)
                {
                    while (nodesNeedEqSync(nodes))
                    {
                        syncAllOnce(v, merge);
                        /*#if DEBUG //TODO:maybe complete sources if new gts but no new merge
                                        foreach (var n in nodes)
                                            Debug.Assert(!n.isValid || !n.universe.needEqSync);
    #endif*/
                    }//while (nodesNeedEqSync(nodes))
                }// void synchAll

                internal void syncAllOnce(VisitorProgress v, bool merge)
                {
                    var todo = new SortedSet<Node>(new NodeComparer());
                    todo.Add(rootNode);
                    while (todo.Count > 0)
                    {
                        var n = todo.First();
                        var u = n.universe;
                        todo.Remove(n);
                        var sns = n.successors.ToList();
                        Debug.Assert(n.isValid);
                        if (u.needEqSync || (merge && u.anyMergeToDo))
                        {
                            while (n.isValid && (u.needEqSync || (merge && u.anyMergeToDo)))
                            {
                                u.synchronize(true);
                                while (merge && n.isValid && u.anyMergeToDo)
                                    u.mergeOnce();
                            }
                            #if DEBUG
                            {
                                var s = string.Format("    SF: {2}{1}", n.index, n.isRefuted ? "refuted" : n.universe.statString, n.isGoal ? "[G]" : "[N]");
                                Console.WriteLine(s);
                                Debug.WriteLine(s);
                            }
                            #endif
                            if (n.universe.isRefuted)
                                propagateRefute(v, n);
                        }
                        foreach (var sn in sns)
                            if (sn.isValid)
                                todo.Add(sn);
                    }//while (todo.Count > 0)
                }
                public void printPostNodePass(VisitorProgress v, Node n)
                {
                    if (n.isGoal)
                        v.processedGoals.Add(n);
#if DEBUG
                    if (n.isGoal && n.universe != null)
                        Slicer.log(2,"    {1}", n.index, n.isRefuted ? "refuted" : n.universe.statString);
#endif
                    if (!n.isRefuted)
                        if (n.universe != null && n.universe.isRefuted)
                            n.refute(n.universe.refuteReason);
                        else if (n != rootNode && n.predecessors.Count == 0)
                            n.refute("unreachable");
                    if (n.isRefuted)
                    {
                        if (n.isGoal)
                        {
                            v.refutedGoal(n);
                            Slicer.log(1, "+++++Refuted     {0}: {1}/{2}/[{3}] goal by {4}", n.universe != null ? ("u" + n.universe.index.ToString()) : ("n" + n.index.ToString()), v.numRefutedGoals, v.processedGoals.Count, (from gn in n.cfg.goalNodes where !gn.isRefuted && (gn.universe == null || !gn.universe.isRefuted) select gn).Count(), n.refuteReason);
                        } else
                            Slicer.log(1, "+=+=+Infeasible by {0}", n.refuteReason);
                    }
                    else
                    {
                        //#if DEBUG
                        if (n.isGoal)
                            Slicer.log(1,"-----Non refuted {0,-16} at {1,-50} : {2,3},{3,3}/{4,3}", n.universe, n, v.numRefutedGoals, v.processedGoals.Count, n.cfg.goalNodes.Count);
                        //#endif
                    }

                }


                public static CFG preprocess(HistoryRecorder hr, Slicer srs, ISet<Predicate> cfgNodes, ISet<Predicate> goalPredicates, ISet<Clause> clauses, ISet<Clause> goals)
                {
                    var cfg = new CFG(hr, srs);
                    buildCFGFromClauses(cfgNodes, goalPredicates, clauses, cfg);
                    if (!cfg.goalNodes.Any())
                        return cfg;


//#if DEBUG
                    checkMissingEs(srs, cfg,"start");
//#endif
                    /*#if DEBUG
                                        foreach (var c in clauses)
                                            if (c.ToStringB().Contains(@"anon48@50_assertion"))
                                                Console.WriteLine(" clause:{0}", c.ToStringB());
                    #endif*/
                    smtDumpIfAny(Slicer.dumpSMTStart, srs, cfg, "start");
                    var ll = 0;
                    Slicer.log(ll, "   Correlating branches");
                    cfg.correlateBranches();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i1");
                    Slicer.log(ll, "   Compressing blocks");
                    cfg.compressBasicBlocks();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i2");
                    Slicer.log(ll, "   Calculating branch conditions");
                    cfg.calculatePathConditions();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i3");
                    Slicer.log(ll, "   Calculating variable forward scope");
                    cfg.calculateVariableForwardScope();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i4");
                    Slicer.log(ll, "   Calculating live variables");
                    cfg.calculateLiveVariables();
                    if (!cfg.goalNodes.Any())
                        return cfg;
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i5");
                    Slicer.log(ll, "   Calculating variable scope");
                    cfg.calculateVariableScope();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i6");
                    Slicer.log(ll, "   Calculating extra terms");
                    cfg.calculateXtraTerms();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i7");
                    Slicer.log(ll, "   Calculating DSA pass 1");
                    cfg.calculateDSAPass1();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i8");
                    Slicer.log(ll, "   Calculating DSA pass 2");
                    cfg.calculateDSAPass2();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i9");
                    Slicer.log(ll, "   Calculating Key Nodes");
                    cfg.calculateKeyNodes();
                    //                    smtDumpIfAny(Slicer.dumpPreOrig,srs, cfg,"orig.i10");

                    Slicer.log(ll, "   Calculating variable order");
                    cfg.calculateVariableOrder();

//#if DEBUG
                    checkMissingEs(srs, cfg,"pre");
//#endif
                    smtDumpIfAny(Slicer.dumpSMTStart1, srs, cfg, "pre");
                    return cfg;
                }

                private static void checkMissingEs(Slicer srs, CFG cfg,string s)
                {
                    return;
                    /*                    var all6 = new Dictionary<Predicate,string>();
                                        foreach (var kv in main.SemanticSlicer.expDir6)
                                        {
                                            foreach (var e in kv.Value)
                                                all6.add
                                                all6.Add(e.ToString());
                                        }*/
                    Console.WriteLine("Checking missing Es {0}", s);
                    var allNowE = new Dictionary<string, IList<Expression>>();
                    foreach (var kv in srs.expressionByPathCondition)
                    {
                        var ee = allNowE[kv.Key.predicate.ToString()] = new List<Expression>();
                        foreach (var e in kv.Value)
                            ee.Add(e);
                    }

                    var allNow = new HashSet<string>();
                    foreach (var n0 in cfg.nodes)
                        foreach (var ns in new[] { n0.predicate.ToString() }.Union(from cp in n0.compressedPredicates select cp.ToString()))
                            foreach (var e in allNowE.getOrEmpty(ns))
                                allNow.Add(e.ToString());
                    foreach (var kv in main.SemanticSlicer.expDir6)
                        foreach (var e in kv.Value)
                            if (!allNow.Contains(e.ToString()))
                            {
                                Console.WriteLine("Missing E: {0} : {1}", kv.Key, e.ToString());
                                //                                Debugger.Break();
                            }
                }

                private static void smtDumpIfAny(bool cond, ISRS srs, CFG cfg,string name)
                {
                    if (cfg.goalNodes.Any() && cond)
                    {
                        Slicer.log(3,"Dumping " + name);
                        cfg.SMTDumpEC(name, (srs as Slicer).expressionByPathCondition, (srs as Slicer).formulaeByPathCondition, SMTLibDumperEC.soOrig);
                        if (Slicer.dumpSMToOrig) cfg.SMTDumpEC(name + ".orig", (srs as Slicer).expressionByPathCondition, (srs as Slicer).formulaeByPathCondition, SMTLibDumperEC.soFwOrig);
                    }
                }

                private static void buildCFGFromClauses(ISet<Predicate> cfgNodes, ISet<Predicate> goalPredicates, ISet<Clause> clauses, CFG cfg)
                {
                    if (clauses.Any(c => c.isFalse))
                        return;
                    foreach (var c in clauses)
                    {
                        if (c.isTrue)
                            continue;
                        var atoms = new HashSet<Literal>();
                        var cAtoms = new HashSet<Literal>();
                        var ncAtoms = new HashSet<Literal>();

                        foreach (var a in c.literals)
                        {
                            atoms.Add(a);
                            if (isCFGNode(a, cfgNodes))
                                cAtoms.Add(a);
                            else
                                ncAtoms.Add(a);
                        }
                        //////////////////////////////////
                        if (cAtoms.Count == 0)
                            if (ncAtoms.Count == 0)
                                throw new Exception("Internal error - false clause");
                            else
                                cfg.addAxiom(c);
                        else if (cAtoms.Count == 1)
                        {
                            var ca = cAtoms.First();
                            var p = ca.f.asPredicateApplication.predicate;
                            var isGoal = goalPredicates.Contains(ca.f.asPredicateApplication.predicate);
                            if (ca.polarity) {
//                                Debugger.Break();
                            } else
                            {
                                Debug.Assert(ncAtoms.Count > 0 || isGoal);// || (cAtoms.Count == 1));
                                if (ncAtoms.Count == 0)
                                    cfg.getOrAddNode(p, true);
                                else //ncAtoms.count > 0
                                    cfg.getOrAddNode(p, isGoal).addClause(new Clause(ncAtoms));
                            }
                        }
                        else //if (cAtoms.Count >= 2)
                        {
                            Debug.Assert(ncAtoms.Count == 0);
                            var nas = new HashSet<Literal>();
                            var pas = new HashSet<Literal>();
                            foreach (var ca in cAtoms)
                                if (ca.polarity)
                                    pas.Add(ca);
                                else
                                    nas.Add(ca);
                            if (nas.Count == 0)
                            {
                                Debug.Assert(pas.All(pa => goalPredicates.Contains(pa.f.asPredicateApplication.predicate)));
                                Debug.Assert(pas.Count == goalPredicates.Count);
                                //ignore - all goals
                            }
                            else
                            {
                                Debug.Assert(nas.Count == 1);
                                Debug.Assert(pas.All(pa => !goalPredicates.Contains(pa.f.asPredicateApplication.predicate)));
                                var from = nas.First().f.asPredicateApplication.predicate;
                                var fromIsGoal = goalPredicates.Contains(from);
                                var tos = from pa in pas select pa.f.asPredicateApplication.predicate;
                                cfg.getOrAddNode(from, fromIsGoal).addEdges(from to in tos select cfg.getOrAddNode(to, false));
                            }
                        }
                    }
                    foreach (var n in cfg.nodes)
                    {
                        if (n != cfg.rootNode && !n.predecessors.Any())
                            n.addIncomingEdge(cfg.rootNode);
                        Debug.Assert(n == cfg.rootNode || n.predecessors.Any());
                    }

                    cfg.trim();
                }
                private static bool isCFGNode(Literal a, ISet<Predicate> cfgNodes)
                {
                    return
                        a.f.isPredicateApplication &&
                        !a.f.asPredicateApplication.args.Any() &&
                        cfgNodes.Contains(a.f.asPredicateApplication.predicate);
                }

                #endregion graph construction

                #region SMT dump
                /*                internal void SMTDumpOrig(string suffix, IDictionary<PredicateApplication, ISet<Expression>> qAxioms, IDictionary<Predicate,IList<IFormula>> mapAxioms)
                                {
                                    new SMTLibDumperEC(this).dumpOrig(suffix, qAxioms, mapAxioms);
                                }*/
                internal void SMTDumpEC(string suffix, IDictionary<PredicateApplication, ISet<Expression>> qAxioms, IDictionary<Predicate, IList<IFormula>> mapAxioms)
                {
                    SMTDumpEC(suffix, qAxioms, mapAxioms, SMTLibDumperEC.soNOP);
                }

                internal void SMTDumpEC(string suffix, IDictionary<PredicateApplication, ISet<Expression>> qAxioms, IDictionary<Predicate,IList<IFormula>> mapAxioms,Action<SMTLibDumperEC> setOptions)
                {
                    var dumper = new SMTLibDumperEC(this);
                    setOptions(dumper);
                    dumper.dump(suffix, qAxioms, mapAxioms);
                }
                #endregion SMT dump

                #region utilities
                internal static ISet<Node> getNodeReach(Node on)
                {
                    Debug.Assert(!on.isRefuted && (on.universe == null || !on.universe.isRefuted));
                    var result = new HashSet<Node> { on };
                    var todo = new Queue<Node>();
                    todo.Enqueue(on);
                    while (todo.Any())
                    {
                        var n = todo.Dequeue();
                        Debug.Assert(result.Contains(n));
                        foreach (var pn in n.predecessors)
                            if (!pn.isRefuted && !pn.universe.isRefuted && result.Add(pn))
                                todo.Enqueue(pn);
                    }
                    return result;
                }

                public static bool setEqual<T>(IEnumerable<T> s1, IEnumerable<T> s2)
                {
                    return new HashSet<T>(s1).SetEquals(new HashSet<T>(s2));
                }
                #endregion utilities

                #region signature
                public TermRepository termRepository;
                #endregion signature

            }//class CFG
        }
    }
}
