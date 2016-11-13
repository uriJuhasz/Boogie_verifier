#include <iostream>
#include <fstream>
#include <sstream>
#include <list>
using namespace std;

class Writer
{
public:
	ofstream& f;
	const int w;
	const int l;

	string varNameA(int i)
	{
		stringstream ss;
		ss << "a_" << i;
		return ss.str();
	}
	string varNameB(int i, int j)
	{
		stringstream ss;
		ss << "b_" << i << "_" << j;
		return ss.str();
	}
	string labelName(int i,int j){
		stringstream ss;
		ss << "l_" << i << "_" << j;
		return ss.str();
	}
	string joinName(int i){
		stringstream ss;
		ss << "j_" << i;
		return ss.str();
	}
	Writer(ofstream& f, const int w, const int l)
		:f(f), w(w),l(l)
	{
		pre();
		for (int i=0;i<l;i++)
		{
			declareVar(varNameA(i));
			for (int j=0;j<w;j++)
				declareVar(varNameB(i,j));
		}
		declareVar(varNameA(l));

		for (int i=0; i<l;i++)
			diamond(i);
		assertEqual(varNameA(0),varNameA(l));
		post();
	}

	void declareVar(string varName)
	{
		declareVar(varName,"int");
	}
	void diamond(int i)
	{
		auto labels = list<string>();
		for (auto j=0; j<w;j++)
			labels.push_back(labelName(i,j));
		branch(labels);
		for (int j=0;j<w;j++)
			joinee(i,j);
		label(joinName(i));
	}
	void joinee(int i, int j)
	{
		auto l = labelName(i,j);
		label(l);
		assumeEqual(varNameA(i),varNameB(i,j));
		assumeEqual(varNameB(i,j),varNameA(i+1));
		branch(joinName(i));
	}
	void assumeEqual(const string a, const string b)
	{
		predicateStatement("assume",a,b);
	}
	void assertEqual(const string a, const string b)
	{
		predicateStatement("assert",a,b);
	}
	void predicateStatement(const string stmt, const string& a, const string& b)
	{
		f << "   " << stmt << " " << a << " == " << b << ";" << endl;
	}
	void declareVar(string varName,string typeName)
	{
		f << "   var " << varName << " : " << typeName << ";" << endl;
	}
	void branch(const string l)
	{
		auto t = list<string>();
		t.push_back(l);
		branch(t);
	}
	void branch(const list<string>& labels)
	{
		f << "   goto ";
		for (auto l : labels)
		{
			f << (l==labels.front() ? "" : ",") << l;
		}
		f << ";" << endl;
	}
	void label(string l)
	{
		f << l << ":" << endl;
	}
	void pre()
	{
		f << "procedure f()" << endl;
		f << "{" << endl;
	}
	void post()
	{
		f << "}" << endl;
	}
};


const int dlength = 50;
const int dwidth = 2;
int main() {
	cout << "Start " << dwidth << "x" << dlength << endl;
	ofstream f;
	f.open ("diamonds.bpl");

	Writer w(f,dwidth,dlength);

	f.close();
	cout << "End" << endl;
	return 0;
}

