using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.StateSpace;
using System.Diagnostics;

namespace Slicer.Programs.Terms
{
    public class MapLookupTerm : Term
    {
        ///////////////////////////////////////////////////////////
        public MapLookupTerm(VariableTerm map, ExpressionList indices)
        {
            Debug.Assert(map != null);
            Debug.Assert(indices != null);
            this.function = MapLookup.getMapLookup();
            this.map = map;
            this.indices = indices;
        }

        //////////////////////////////////////////////
        public Term deepClone()
        {
            return new MapLookup(map.cloneVariable(), arguments.deepClone());
        }

        //////////////////////////////////////////////
        public Term shallowClone()
        {
            return new MapLookup(map, arguments);
        }

        public void visit(Visitor v)
        {
            v.visit(this);
        }
        
        //////////////////////////////////////////////
        public override string ToString() {
            string result = map.ToString() + "[";
            int i=0;
            foreach (var a in arguments)
            {
                if (i > 0)
                    result += (i > 1 ? "," : "") + a.ToString();
                i++;
            }
            result += "]";
            return result;
        }

        //////////////////////////////////////////////
        //////////////////////////////////////////////
        public Logic.Function      function { get; private set; }
        public VariableTerm            map      { get; private set; }
        public ExpressionList      indices  { get; private set; }
        public ExpressionList      arguments{ 
            get{
                ExpressionList result = new ExpressionList();
                result.append(map);
                result.append(indices);
//                System.Console.WriteLine("MLU.arguments(" + map.ToString() + " = " + result.ToString() + ")");
                return result;
            }
        }
        public Terms.VariableTerm deepVariable
        {
            get
            {
                return map.deepVariable;
            }
        }
    }
}
