using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using System;

namespace Slicer.StateSpace.Functions.Basic
{
    internal class BasicMapRead : MapRead
    {
        private static readonly Dictionary<string, BasicMapRead> instances = new Dictionary<string, BasicMapRead>();
        public bool isITE { get { return false; } }

        private BasicMapRead(MapType mapType, IEnumerable<IType> mapTypeArguments, IEnumerable<IType> indexTypes, IType resultType)
        {
            Debug.Assert(mapType != null);
            Debug.Assert(indexTypes != null);
            Debug.Assert(resultType != null);
            Debug.Assert(mapType.domain.Count() == indexTypes.Count());
            Debug.Assert(mapTypeArguments != null);
            Debug.Assert(mapType.typeParameters.Length == mapTypeArguments.Count());

            var substitution = new TypeParameterInstantiation(mapType.typeParameters, mapTypeArguments);
            Debug.Assert(resultType.ToStringN() == mapType.range.substitute(substitution).ToStringN());
            Debug.Assert(mapType.domain.Zip(indexTypes, (x, y) => x.substitute(substitution).isEquivalent(y)).All(x=>x));
/*            for (int i = 0; i < indexTypes.Count(); i++)
                Debug.Assert(indexTypes[i].ToStringExpanded() ==
                             mapType.domain[i].substitute(substitution).ToStringExpanded());
            */
            this.mapType = mapType;
            mapIndexTypes = TypeTuple.make(indexTypes);
            this.resultType = resultType;
            this.mapTypeArguments = TypeTuple.make(mapTypeArguments);
        }

        #region MapRead Members

        public string name
        {
            get { return "MapRead"; }
        }

        public string templateName
        {
            get { return name; }
        }

        public string fullName
        {
            get
            {
                return name + "<" + mapType.ToStringN() + mapTypeArguments.Aggregate("", (s, a) => s + "," + a.ToStringN()) + ">";
            }
        }

        public MapType mapType { get; private set; }
        public IType resultType { get; private set; }
        public ITypeTuple mapIndexTypes { get; private set; }

        public ITypeTuple argumentTypes
        {
            get
            {
                var result = new IType[mapType.domain.Count() + 1];
                result[0] = mapType;
                for (int i = 0; i < mapIndexTypes.Count(); i++)
                    result[i + 1] = mapIndexTypes[i];
                return TypeTuple.make(result);
            }
        }

        public ITypeTuple mapTypeArguments { get; private set; }

        public ITypeTuple typeArguments
        {
            get { return TypeTuple.make(new[]{mapType}.Concat(mapTypeArguments)); }
        }

        public ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                ISet<TypeVariable> result = resultType.freeTypeVariables;
                result.UnionWith(mapType.freeTypeVariables);
                foreach (var it in mapIndexTypes)
                    result.UnionWith(it.freeTypeVariables);
                return result;
            }
        }

        public Function substitute(TypeParameterInstantiation s)
        {
            return new BasicMapRead(
                mapType.substituteMap(s),
                (from ta in mapTypeArguments select ta.substitute(s)).ToArray(),
                (from it in mapIndexTypes select it.substitute(s)).ToArray(),
                resultType.substitute(s)
                );
        }

        #endregion

        public override string ToString()
        {
            return name;
        }

        public static BasicMapRead mapRead(MapType mapType, ITypeTuple typeArguments)
        {
            Debug.Assert(mapType != null);
            Debug.Assert(typeArguments != null);
            Debug.Assert(mapType.typeParameters.Length == typeArguments.Count());

            var s = new TypeParameterInstantiation(mapType.typeParameters, typeArguments);
            var argumentTypes = TypeTuple.make(new []{mapType}.Concat(from a in mapType.domain select a.substitute(s)));
            var resultType = mapType.range.substitute(s);

            return mapRead(typeArguments, argumentTypes, resultType);
        }

        public static BasicMapRead mapRead(IEnumerable<IType> typeArguments, IEnumerable<IType> argumentTypes, IType resultType)
        {
            Debug.Assert(typeArguments != null);
            Debug.Assert(argumentTypes != null);
            Debug.Assert(argumentTypes.Count() > 0);
            var mapType = argumentTypes.First() as MapType;
            Debug.Assert(mapType != null);
            Debug.Assert(typeArguments.Count() == mapType.typeParameters.Length);
            Debug.Assert(mapType.domain.Count() == argumentTypes.Count() - 1);

            var substitution = new TypeParameterInstantiation(mapType.typeParameters, typeArguments);
            IType sresultType = mapType.range.substitute(substitution);
            Debug.Assert(resultType.ToStringN() == sresultType.ToStringN());
            Debug.Assert(argumentTypes.Skip(1).Zip(mapType.domain, (at, mtD) => at.isEquivalent(mtD.substitute(substitution))).All(x => x));
            string indexString = makeIndexString(TypeTuple.make(typeArguments), TypeTuple.make(argumentTypes));

            BasicMapRead result = null;

            bool foundInstance = instances.TryGetValue(indexString, out result);
            if (result != null)
            {
                if (!ReferenceEquals(resultType, result.resultType))
                    foundInstance = false;
                else
                    if (argumentTypes.Zip(result.argumentTypes, (x, y) => x.isEquivalent(y)).Any(x => !x))
                        foundInstance = false;
            }
            if (!foundInstance)
            {
                var indexTypes = argumentTypes.Skip(1);
                result = new BasicMapRead(mapType, typeArguments, indexTypes, resultType);
                instances[indexString] = result;
            }
            return result;
        }

        private static string makeIndexString(ITypeTuple typeArguments, ITypeTuple argumentTypes)
        {
            string indexString = "<";

            for (int i = 0; i < typeArguments.Count(); i++)
                indexString += (String.IsNullOrEmpty(indexString) ? "" : ",") + typeArguments[i].ToString();

            indexString += ">(";

            for (int i = 0; i < argumentTypes.Count(); i++)
                indexString += (indexString == "" ? "" : ",") + argumentTypes[i].ToString();

            indexString += ")";
            return indexString;
        }
    }
}