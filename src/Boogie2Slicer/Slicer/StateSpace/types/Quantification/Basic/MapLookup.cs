using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Slicer.Logic.Basic
{
    class MapLookup : Logic.Function
    {
        public MapLookup()
        {
        }

        public Logic.Function clone()
        {
            return new MapLookup();
        }

        public override string ToString()
        {
            return "MapLookup";
        }

    }
}
