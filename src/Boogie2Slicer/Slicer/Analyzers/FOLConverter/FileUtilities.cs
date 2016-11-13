namespace Slicer.Analyzers.FOLConverter
{
    internal class FileUtilities
    {
        public static string trimFileName(string fileName)
        {
            const int maxPath = 260;
            const int extra = 50;
            return fileName.Length + extra >= maxPath ? fileName.Substring(0, maxPath - (extra)) : fileName;
        }
    }
}