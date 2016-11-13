namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface IPredicate : IOperator
    {
        bool isEquality { get; }
        bool isITE { get; }
        bool isLessThan { get; }
        PP pp(bool polarity);
    }

    public class PP
    {
        public PP(IPredicate pr)
            : this(pr,true)
        {
            pn = new PP(pr, false);
            pn.pn = this;
        }
        private PP(IPredicate predicate,bool polarity)
        {
            this.predicate = predicate;
            this.polarity = polarity;
            hashCache = (polarity.ToString() + predicate.nameN).GetHashCode();
        }
        public readonly IPredicate predicate;
        public readonly bool polarity;
        public readonly int hashCache;
        private PP pn;
        public  PP n {get{return pn;}}

        public bool isEqDE { get { return predicate.isEquality; } }

        public override int GetHashCode()
        {
            return hashCache;
        }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public override string ToString()
        {
            return (polarity ? "+":"-") + predicate.ToString();
        }
    }

}