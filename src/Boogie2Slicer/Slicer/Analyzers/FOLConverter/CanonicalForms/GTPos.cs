using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class FCITPos
    {
        public FCITPos(int ili, ILITPos ilp)
        {
            this.ili = ili;
            this.ilp = ilp;
        }
        public readonly int ili;
        public readonly ILITPos ilp;
        public override string ToString()
        {
            return ili.ToString() + "." + ilp.ToString();
        }
        public string ToStringN()
        {
            return ili.ToString() + "." + ilp.ToStringN();
        }
    }
    public interface ILITPos {
        int iti { get; }
        ITITPos itp { get; }
        string ToStringN();
    }
    public class FLITPos : ILITPos
    {
        public int iti{get;private set;}
        public ITITPos itp{get;private set;}

        public FLITPos(int iti, ITITPos itp)
        {
            this.iti = iti;
            this.itp = itp;
/*#if DEBUG
            if (itp.depth >= 3)
                Debugger.Break();
#endif*/
        }
        public override string ToString()
        {
            return iti.ToString() + "." + itp.ToString();
        }
        public string ToStringN()
        {
            return iti.ToString() + "." + itp.ToStringN();
        }
    }
    public interface ITITPos
    {
        bool isEmpty { get; }
        string ToStringN();
        int depth { get; }
    }
    public interface FTITPos : ITITPos { }
    public class FTITPos1 : FTITPos
    {
        public FTITPos1(int iti, ITITPos next)
        {
            this.iti = iti;
            this.next = next;
            this.hashCode = ToStringN().GetHashCode();
        }
        public bool isEmpty { get { return false; } }
        public int iti { get; private set; }
        public ITITPos next { get; private set; }
        public override string ToString()
        {
            return iti.ToString() + ((next is GTGTPosEmpty) ? "" : "." + next.ToString());
        }
        public static string makeStringN(int iti, ITITPos next)
        {
            return iti.ToString() + ((next is GTGTPosEmpty) ? "" : "." + next.ToStringN());
        }
        public string ToStringN()
        {
            return makeStringN(iti, next);
        }
        private readonly int hashCode;
        public override int GetHashCode()
        {
            return hashCode;
        }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public int depth { get { return 1 + next.depth; } }

    }
    public class GCGTPos
    {
        public GCGTPos(int gli,GLGTPos glPos)
        {
            this.gli = gli;
            this.glPos = glPos;
        }
        public readonly int gli;
        public readonly GLGTPos glPos;
        public override string ToString()
        {
            return gli.ToString() + "." + glPos.ToString();
        }
        public string ToStringN()
        {
            return gli.ToString() + "." + glPos.ToStringN();
        }
    }
    public class GLGTPos : ILITPos
    {
        public readonly int gti;
        public readonly GTGTPos gtp;
        public int iti { get { return gti; } }
        public ITITPos itp { get { return gtp; } }

        public GLGTPos(int i, GTGTPos gtp)
        {
            this.gti = i;
            this.gtp = gtp;
        }
        public override string ToString()
        {
            return gti.ToString() + "." + gtp.ToString();
        }
        public string ToStringN()
        {
            return gti.ToString() + "." + gtp.ToStringN();
        }
    }
    public interface GTGTPos : ITITPos
    {
    }
    public class GTGTPosEmpty : FTITPos,GTGTPos
    {
        public bool isEmpty { get { return true; } }
        public override string ToString()
        {
            return "";
        }
        public string ToStringN()
        {
            return "";
        }
        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public int depth { get { return 0; } }
    }
    public class GTGTPos1 : GTGTPos
    {
        public GTGTPos1(int i, int j, GTGTPos next)
        {
            this.gfai = i;
            this.gti = j;
            this.next = next;
            this.hashCode = ToStringN().GetHashCode();
        }
        public bool isEmpty { get { return false; } }
        public int gfai { get; private set; }
        public int gti { get; private set; }
        public GTGTPos next { get; private set; }
        public override string ToString()
        {
            return gfai.ToString() + "," + gti.ToString() + ((next is GTGTPosEmpty) ? "" : "." + next.ToString());
        }
        public static string makeStringN(int i,int j,GTGTPos next)
        {
            return i.ToString() + "," + j.ToString() + ((next is GTGTPosEmpty) ? "" : "." + next.ToStringN());
        }
        public string ToStringN()
        {
            return makeStringN(gfai, gti, next);
        }
        private readonly int hashCode;
        public override int GetHashCode()
        {
            return hashCode;
        }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public int depth { get { return 1 + next.depth; } }
    }
}
