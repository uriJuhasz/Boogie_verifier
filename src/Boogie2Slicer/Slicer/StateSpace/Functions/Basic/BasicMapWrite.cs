using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;

namespace Slicer.StateSpace.Functions.Basic
{
    internal class BasicMapWrite : MapWrite
    {
        private static readonly Dictionary<string, BasicMapWrite> instances = new Dictionary<string, BasicMapWrite>();
        public bool isITE { get { return false; } }

        private BasicMapWrite(
            MapType mapType, 
            ITypeTuple indexTypes, 
            IType sourceType, 
            IType resultType,
            ITypeTuple mapTypeArguments
        )
        {
            Debug.Assert(mapType != null);
            Debug.Assert(mapTypeArguments != null);
            Debug.Assert(indexTypes != null);
            Debug.Assert(sourceType != null);
            Debug.Assert(resultType != null);
            Debug.Assert(indexTypes.Count() == mapType.domain.Count());
            Debug.Assert(mapTypeArguments.Count() == mapType.typeParameters.Length);

            this.mapType = mapType;
            mapIndexTypes = indexTypes;
            this.sourceType = sourceType;
            this.resultType = resultType;
            this.mapTypeArguments = TypeTuple.make(mapTypeArguments);
            Debug.Assert(this.mapTypeArguments != null);
            this.typeArguments = TypeTuple.make(new IType[1] {mapType}.Concat(mapTypeArguments));
            this.argumentTypes = TypeTuple.make(new []{mapType}.Concat(mapIndexTypes).Concat(new[]{sourceType}));
            this.freeTypeVariables = 
                new HashSet<TypeVariable>(resultType.freeTypeVariables.
                    Union(mapType.freeTypeVariables).
                    Union(sourceType.freeTypeVariables).
                    Union(from it in mapIndexTypes from fv in it.freeTypeVariables select fv)
                );
        }

        #region MapWrite Members

        public string name
        {
            get { return "MapWrite"; }
        }

        public string fullName
        {
            get
            {
                return name + "<" + mapType.ToStringN() + mapTypeArguments.Aggregate("",(s,a)=>s+","+a.ToStringN()) + ">";
            }
        }

        public string templateName
        {
            get { return name; }
        }

        public MapType mapType { get; private set; }
        public IType resultType { get; private set; }
        public ITypeTuple mapIndexTypes { get; private set; }
        public IType sourceType { get; private set; }

        public ITypeTuple typeArguments{get; private set;}
        public ITypeTuple mapTypeArguments { get; private set; }
        public ITypeTuple argumentTypes{ get; private set; }

        public ISet<TypeVariable> freeTypeVariables{ get; private set; }

        public Function substitute(TypeParameterInstantiation s)
        {
            return makeMapWrite(
                (from a in mapTypeArguments select a.substitute(s)).ToArray(),
                (from a in argumentTypes select a.substitute(s)).ToArray(),
                resultType.substitute(s)
                );
        }

        public MapRead relevantMapRead
        {
            get
            {
                return BasicMapRead.mapRead(typeArguments.Skip(1).ToArray(),
                                                argumentTypes.Take(argumentTypes.Count() - 1).ToArray(),
                                                argumentTypes.Last());
            }
        }

        public MapRead mapRead(IEnumerable<IType> mapTypeArgs)
        {
            Debug.Assert(mapTypeArgs.Count() == mapType.typeParameters.Length);
            return BasicMapRead.mapRead(mapType, TypeTuple.make(mapTypeArgs));
        }

        #endregion

        public override string ToString()
        {
            return name;
        }

        public static BasicMapWrite makeMapWrite(
            IEnumerable<IType> mapTypeArgumentsA, 
            IEnumerable<IType> argumentTypesA,
            IType resultType)
        {
            var mapTypeArguments = TypeTuple.make(mapTypeArgumentsA);
            var argumentTypes = TypeTuple.make(argumentTypesA);
            Debug.Assert(mapTypeArguments != null);
            Debug.Assert(argumentTypes != null);
            Debug.Assert(argumentTypes.Count() > 1);
            var mapType = argumentTypes[0] as MapType;
            var sourceType = argumentTypes.Last();
            Debug.Assert(mapType != null);
            Debug.Assert(mapType.domain.Count() == argumentTypes.Count() - 2);
            Debug.Assert(mapType.typeParameters.Count() == mapTypeArguments.Count());

            var indexString = "";
            foreach (var a in argumentTypes)
                indexString += (indexString == "" ? "" : ",") + a.ToString();

            var indexTypes = TypeTuple.make(argumentTypes.Skip(1).Take(argumentTypes.Count() - 2));

            BasicMapWrite result = null;
            bool foundInstance = instances.TryGetValue(indexString, out result);
            if (result != null)
            {
                if (!ReferenceEquals(resultType, result.resultType))
                    foundInstance = false;
                else
                    for (int i = 0; i < argumentTypes.Count(); i++)
                        if (!ReferenceEquals(argumentTypes[i], result.argumentTypes[i]))
                        {
                            foundInstance = false;
                            break;
                        }
            }

            if (!foundInstance)
            {
                result = new BasicMapWrite(mapType, indexTypes, sourceType, resultType, mapTypeArguments);
                Debug.Assert(indexString != null);
                Debug.Assert(instances != null);
                Debug.Assert(result != null);
//                instances.Add(indexString,result);
                instances[indexString] = result;
            }

            return result;
        }
    }
}