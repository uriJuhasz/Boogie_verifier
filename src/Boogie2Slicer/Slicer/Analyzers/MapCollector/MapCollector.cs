using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs;
using Slicer.StateSpace;
using Slicer.Programs.Expressions;
using System.Diagnostics;
using Slicer.StateSpace.Types;
using Slicer.Programs.Conditions;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Functions;

namespace Slicer.Analyzers.MapCollector
{
    public class MapCollector : AVisitor, Analyzer<MapCollector>
    {
        /////////////////////////////////////////////////////
        public MapCollector()
        {
            maps = new MapCollection();
        }

        /////////////////////////////////////////////////////
        public void initializeStart(StatementId si, Procedure procedure)
        {
            this.procedure = procedure;
            maps.procedure = procedure;
        }

        /////////////////////////////////////////////////////
        public void join(ICollection<Tuple<BasicEdge.Guard, MapCollector>> predecessors, StatementId si)
        {
/*            Console.WriteLine("join: {0}", si.ToString());
            foreach (var p in si.predecessors)
                Console.WriteLine("\t{0}", p.Item2.ToString());
            */
            Debug.Assert(predecessors.Count > 0);
            int x = 0;
            foreach (var p in predecessors) x += p.Item2.maps.count;

            this.procedure = predecessors.First().Item2.procedure;
            maps.procedure = procedure;
            
            foreach (var pred in predecessors)
            {
                Debug.Assert(!ReferenceEquals(pred, this));
                merge(pred.Item2, si);
            }
        }

        /////////////////////////////////////////////////////
        private void merge(MapCollector pred, StatementId si)
        {
            maps.merge(pred.maps);
        }

//        private HashSet<string> visited;
/*        /////////////////////////////////////////////////////
        private void spill(BasicBlock si, BasicEdge e, int l)
        {
            for (int i = 0; i < l; i++)
                Console.Write("\t");
            Console.Write(si.label);
            if (e!=null && e.isBackEdge())
                Console.Write(" - b");
            Console.WriteLine();

            visited.Add(si.label);
            foreach (var p in si.predecessors)
                if (!visited.Contains(p.source.label))
                    spill(p.source, p, l + 1); 
        }
        */
        /////////////////////////////////////////////////////
        public void propagate(MapCollector prestate, StatementId s)
        {
/*            if (prestate.procedure == null)
            {
                visited = new HashSet<string>();
                spill(s.basicBlock, null, 0);
            }
            else
            {
                Console.WriteLine("propagate: {0}", s.ToString());
                foreach (var p in s.predecessors)
                    Console.WriteLine("\t{0}", p.Item2.ToString());
            }
  */          Debug.Assert(!ReferenceEquals(this, prestate));
            Debug.Assert(!ReferenceEquals(this.maps, prestate.maps));
            Debug.Assert(prestate.procedure != null);
            
            this.procedure = prestate.procedure;
            maps.procedure = procedure;
            
            maps.merge(prestate.maps);
            s.statement.visit(this);
        }

        /////////////////////////////////////////////////////
        public MapCollector extract(StateInformation si)
        {
            if (si.mapCollector == null)
                si.mapCollector = new MapCollector();
            return si.mapCollector;
        }

        /////////////////////////////////////////////////////
        public string domainName { get { return "Map Collector"; } }

        /////////////////////////////////////////////////////
        public override string ToString() { return maps.ToString(); }

        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////
        public override Expression visit(FunctionApplicationExpression e) {
            if (e.function is MapLookup || e.function is MapUpdate)
            {
                maps.add(e);
                base.visit(e);
            }
            else
                base.visit(e);
            return e;
        }

        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////
        public override ProgramVariable visitReadProgramVariable(ProgramVariable v)
        {
            if (isMap(v))
                maps.add(v);
            return v;
        }

        public override ProgramVariable visitWriteProgramVariable(ProgramVariable v) { return v; }

        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////
        private bool isMap(ProgramVariable v)
        {
            return v.type is MapType;
            //TODO: Flatten maps, attach Types, collect incarnation update and whole incarnation read/write
        }

        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////
        public class MapCollection
        {
            internal MapCollection()
            {
                mapData = new Dictionary<string, MapData>();
            }

            internal void merge(MapCollection other)
            {
                Debug.Assert(!ReferenceEquals(this, other));
                Debug.Assert(!ReferenceEquals(this.mapData, other.mapData));
                foreach (var md in other.mapData)
                {
                    if (!mapData.ContainsKey(md.Key))
                        mapData.Add(md.Key, new MapData(md.Key));
                    mapData[md.Key].merge(md.Value);
                }
            }

            internal void add(FunctionApplicationExpression mlu)
            {
                Debug.Assert(mlu.function is MapLookup || mlu.function is MapUpdate);
                string name = getBaseName(mlu);
                if (!mapData.ContainsKey(name))
                    mapData.Add(name, new MapData(name));
                mapData[name].add(mlu);
            }

            internal void add(ProgramVariable v)
            {
                string name = procedure.getBaseIncarnation(v.name).name;
                if (!mapData.ContainsKey(name))
                    mapData.Add(name, new MapData(name));
                mapData[name].add(v);
            }

            private string getBaseName(FunctionApplicationExpression mlu)
            {
                Debug.Assert(mlu.function is MapLookup || mlu.function is MapUpdate);
                Debug.Assert(mlu.arguments.count > 0);
                Expression mapExpression = mlu.arguments[0];
                string result = mapExpression.ToString();
                if (mapExpression is ProgramVariableExpression)
                    result = procedure.getBaseIncarnation((mapExpression as ProgramVariableExpression).name).name;

                return result;
            }
            
            public int count
            {
                get
                {
                    int i = 0;
                    foreach (var kv in mapData)
                        i += kv.Value.fieldReads.Count + kv.Value.wholeReads.Count + kv.Value.updateReads.Count;
                    return i;
                }
            }

            public readonly Dictionary<string, MapData> mapData;
            public sealed class MapData
            {

                private readonly string baseName;

                public MapData(string baseName)
                {
                    this.baseName = baseName;
                    fieldReads = new HashSet<FunctionApplicationExpression>();
                    wholeReads = new HashSet<ProgramVariable>();
                    updateReads = new HashSet<FunctionApplicationExpression>();
                }

                internal void merge(MapData other)
                {
                    Debug.Assert(!ReferenceEquals(this, other));
                    Debug.Assert(!ReferenceEquals(fieldReads, other.fieldReads));
                    Debug.Assert(other.baseName.CompareTo(baseName) == 0);
                    foreach (var r in other.fieldReads)
                        fieldReads.Add(r);
                    foreach (var r in other.wholeReads)
                        wholeReads.Add(r);
                    foreach (var r in other.updateReads)
                        updateReads.Add(r);
                }

                internal void add(FunctionApplicationExpression mlu)
                {
                    if (mlu.function is MapLookup)
                        fieldReads.Add(mlu);
                    if (mlu.function is MapUpdate)
                        updateReads.Add(mlu);
                }
                internal void add(ProgramVariable v)
                {
                    wholeReads.Add(v);
                }

                public readonly HashSet<FunctionApplicationExpression> fieldReads;
                public readonly HashSet<FunctionApplicationExpression> updateReads;
                public readonly HashSet<ProgramVariable> wholeReads;

            }
            internal Procedure procedure;

        }
    
        /////////////////////////////////////////////////////
        /////////////////////////////////////////////////////
        private Procedure procedure;
        public readonly MapCollection maps;
    }
}
