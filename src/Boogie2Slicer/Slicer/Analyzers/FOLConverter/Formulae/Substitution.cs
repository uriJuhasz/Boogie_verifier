#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class Substitution
    {
        private readonly Stack<IDictionary<LVar, ITerm>> stack = new Stack<IDictionary<LVar, ITerm>>();
        private IDictionary<LVar, ITerm> termMap;

        public IEnumerable<LVar> domain { get { return termMap.Keys; } }
        public Substitution()
        {
            termMap = new Dictionary<LVar, ITerm>();
        }

        public Substitution(IDictionary<LVar, ITerm> termMap)
        {
            Debug.Assert(termMap.All(x => x.Key.type.isEquivalent(x.Value.type)));
            this.termMap = new Dictionary<LVar, ITerm>(termMap);
        }

        public Substitution(LVar v, ITerm t)
            : this()
        {
            Debug.Assert(v.type.isEquivalent(t.type));
            termMap[v] = t;
        }

        public Substitution(IList<LVar> fvs, IList<ITerm> vts)
            : this()
        {
            Debug.Assert(fvs.Count == vts.Count);
            Debug.Assert(fvs.Zip(vts,(x,y)=>new Tuple<LVar,ITerm>(x,y)).All(t => t.Item1.type.isEquivalent(t.Item2.type)));
            for (var i = 0; i < fvs.Count; i++)
                termMap[fvs[i]] = vts[i];
        }

        public ISet<LVar> freeVariables{
            get
            {
                return FU.union(from v in termMap.Values select v.freeVariables);
            }
        }

        public Substitution without(LVar var)
        {
            var newMap = new Dictionary<LVar, ITerm>(termMap);
            newMap.Remove(var);
            return new Substitution(newMap);
        }

        public ITerm map(LVar var)
        {
            ITerm t;
            return termMap.TryGetValue(var, out t) ? t : null;
        }

        internal void add(LVar v, ITerm t)
        {
            Debug.Assert(v.type.isEquivalent(t.type));
            Debug.Assert(!termMap.ContainsKey(v));
            Debug.Assert(!(from fv in t.freeVariables select fv).Intersect(termMap.Keys.Union(new[]{ v })).Any());
            //TODO: check v is not free in termMap.Values
            termMap[v] = t;
        }

        internal bool hasMap(LVar v)
        {
            return termMap.ContainsKey(v);
        }

        public override string ToString()
        {
            var result = "[";
            foreach (var p in termMap)
                result += ((result=="[") ? "" : ",") + p.Key + "->" + p.Value.ToString();
            result += "]";
            return result;
        }

        internal void push()
        {
            stack.Push(new Dictionary<LVar, ITerm>(termMap));
        }

        internal void pop()
        {
            termMap = stack.Pop();
        }

        internal void composeWith(Substitution s)
        {
            var kk = new List<LVar>(termMap.Keys);
            foreach (var k in kk)
                termMap[k] = termMap[k].substitute(s);
            var nk = new List<LVar>(s.termMap.Keys.Except(termMap.Keys));
            foreach (var k in nk)
                termMap[k] = s.termMap[k];
        }

        internal Substitution compose(Substitution s)
        {
            var result = new Substitution(termMap);
            result.composeWith(s);
            return result;
        }
    }
}