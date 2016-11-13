using Slicer.Analyzers.FOLConverter.Clauses;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class HA<T> : IEnumerable<T> where T : NormalizedStringElement
    {
        public int Count { get { return array.Length; } }
        public HA(IEnumerable<T> terms)
        {
            array = terms.ToArray();
            stringCache = makeString(array);
            hashCache = stringCache.GetHashCode();
        }

        public T this[int index]
        {
            get { return array[index]; }
        }

        private readonly string stringCache;
        private readonly int hashCache;
        public override string ToString()
        {
            return stringCache;
        }
        public override int GetHashCode()
        {
            return hashCache;
        }
        public override bool Equals(object obj)
        {
            return (obj is HA<T>) && obj.ToString() == ToString();
        }

        public static string makeString(IEnumerable<T> strings)
        {
            return strings.Aggregate("", (s, x) => s + "[" + x.ToStringN() + "]");
        }
        public IEnumerator<T> GetEnumerator()
        {
            return array.AsEnumerable().GetEnumerator();
        }

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }


        private readonly T[] array;
    }

}
