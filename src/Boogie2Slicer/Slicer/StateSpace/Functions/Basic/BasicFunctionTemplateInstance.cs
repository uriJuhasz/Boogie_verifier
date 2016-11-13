using System.Linq;
using Slicer.StateSpace.Types;
using System.Collections.Generic;
using System;

namespace Slicer.StateSpace.Functions.Basic
{
    internal class BasicFunctionTemplateInstance : BFunction, FunctionTemplateInstance
    {
        private readonly ITypeTuple pTypeArguments;

        public BasicFunctionTemplateInstance(
            FunctionTemplate template,
            IEnumerable<IType> typeArguments
            )
            : base(
                template.name,
                template.signature.resultType.substitute(new TypeParameterInstantiation(template.typeParameters,
                                                                                        typeArguments)),
                (from at in template.signature.argumentTypes
                 select at.substitute(new TypeParameterInstantiation(template.typeParameters, typeArguments))).ToArray()
                )
        {
            this.template = template;
            pTypeArguments = TypeTuple.make(typeArguments);
        }

//        public bool isITE { get { return name.StartsWith(BasicFunctionTemplate.iteName); } }

        #region FunctionTemplateInstance Members

        public override string templateName
        {
            get { return template.name; }
        }

        public override string fullName
        {
            get
            {
                string result = template.name;
                if (typeArguments.Count() > 0)
                {
                    result += "<";
                    for (int i = 0; i < typeArguments.Count(); i++)
                        result += ((i == 0) ? "" : ",") + typeArguments[i].ToStringN();
                    result += ">";
                }
                return result;
            }
        }

        public FunctionTemplate template { get; private set; }

        public override ITypeTuple typeArguments
        {
            get { return pTypeArguments; }
            protected set { throw new NotImplementedException(); }
        }

        public override Function substitute(TypeParameterInstantiation s)
        {
            return new BasicFunctionTemplateInstance(
                template,
                (from a in typeArguments select a.substitute(s)).ToArray()
                );
        }

        #endregion

        internal bool isGroundInstance()
        {
            foreach (var ta in typeArguments)
                if (ta.freeTypeVariables.Count > 0)
                    return false;
            return true;
        }
    }
}