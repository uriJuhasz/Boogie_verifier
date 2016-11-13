using System.Diagnostics;
using TI = System.Int32;
using GTI = System.Int32;
using GTTI = System.Int32;
using GTTKey = System.String;
using System;
using System.Collections.Generic;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class RGTSD : AGTSD, RTSDBase<GT>
    {
        public RGTSD(int gti, RSources<GT> sss)
            : base(gti)
        {
            this.pSSS = sss;
        }
        public RSources<GT> sss { get { return pSSS; } }
        private readonly RSources<GT> pSSS;
    }
    public class RGTTSD : AGTTSD, RTSDBase<GTT>
    {
        public RGTTSD(int gtti, int[] gtis, RSources<GTT> sss)
            : base(gtti, gtis)
        {
            this.pSSS = sss;
        }
        public RSources<GTT> sss { get { return pSSS; } }
        private readonly RSources<GTT> pSSS;
    }
    public interface RTSDBase<T> : ITSDBase<T>
        where T : ECLogicElement
    {
        RSources<T> sss { get; }
    }
    public class RSources<T> : TSources<T> where T : ECLogicElement
    {
        //Sources for on GT or GTT
        //T in {GT,GTT}
    }
    internal class RTSourceStructure<T, TSD> : TSourceStructure<T, TSD>
        where T : ECLogicElement
        where TSD : TSDBase<T>,RTSDBase<T>
    {
        //Source structure for GT or GTT
        //T in {GT,GTT}
        private readonly RU ru;

        internal RTSourceStructure(RU ru)
        {
            this.ru = ru;
        }
        public override IUNG gUniverse { get { return ru; } }
        #region consistency
        public bool sourcesComplete(TI ti)
        {
            return sourcesComplete(ti, getTD(ti).sss);
        }
        public bool sourcesComplete(TI ti, RSources<T> s)
        {
            return true;
        }
        #endregion consistency
    }
    internal sealed class RSourceStructure : USourceStructure<RGTSD, RGTTSD, RTSourceStructure<GT, RGTSD>, RTSourceStructure<GTT, RGTTSD>>
    {
        public RSourceStructure(RU ru)
            : base(new RTSourceStructure<GT, RGTSD>(ru), new RTSourceStructure<GTT, RGTTSD>(ru))
        {
            this.ru = ru;
        }
        protected override sealed RGTSD makeNewGTD(GTI gti)
        {
            return new RGTSD(gti, new RSources<GT>());
        }
        public override IUNG gu { get { return ru; } }
        private readonly RU ru;

        protected override sealed RGTTSD makeNewGTTD(GTTI gtti, GTI[] gttGTIs)
        {
            var key = makeGTTKey(gttGTIs);
            Debug.Assert(!hasGTTKey(key));
            return new RGTTSD(gtti, gttGTIs, new RSources<GTT>());
        }

        #region garbage
        internal override IEnumerable<GT> getAllPGTs(int i) { throw new Exception(); }
        internal override IEnumerable<GT> getGTIPGTs(int i, GTI gti) { throw new Exception(); }
        internal override IEnumerable<GTT> getAllPGTTs(int i) { throw new Exception(); }
        internal override IEnumerable<GTT> getGTTIPGTTs(int i, GTTI gtti) { throw new Exception(); }
        #endregion garbage

        #region consistency
        private void checkSourcesGTI(GTI gti)
        {
        }
        private void checkSourcesGTTI(GTTI gtti) { /*TODO*/}
        internal void check()
        {
#if DEBUG
            foreach (var gti in gts.allTIs)
                checkSourcesGTI(gti);
            foreach (var gtti in gtts.allTIs)
                checkSourcesGTTI(gtti);
            gts.check();
            gtts.check();
#endif
        }
        #endregion consistency
    }
}
