using System;
using System.Diagnostics;
using Slicer.StateSpace;
using Slicer.Programs.Terms.utilities;

namespace Slicer.Programs.Terms
{
    public class FunctionApplicationTerm : Term
    {
        public FunctionApplicationTerm(Logic.Function function,ExpressionList arguments){
            Debug.Assert(function!=null);
            Debug.Assert(arguments!=null);
            this.function  = function;
            this.arguments = arguments;
        }

        //////////////////////////////////////////////
        public virtual void visit(TermVisitor v)
        {
            v.visit(this);
        }

        //////////////////////////////////////////////
        public virtual Terms.Term deepClone() 
        { 
            return new FunctionApplicationTerm(function, arguments.deepClone()); 
        }
        
        public virtual Terms.Term shallowClone() 
        { 
            return new FunctionApplicationTerm(function, arguments.shallowClone()); 
        }

        ////////////////////////////////////////////
        public override String ToString()
        {

            if (isInfixBinary())
                return arguments[0].ToString() + " " + function.ToString() + " " + arguments[1].ToString();

            if (isPrefixUnary())
                return function.ToString() + arguments[0].ToString();

            if (isMapSelect())
            {
                String result = arguments[0].ToString() + "[";
                for (int i = 1; i < arguments.count; i++)
                {
                    result += arguments[i].ToString();
                    if (i < arguments.count - 1)
                        result += ",";
                }
                result += "]";
                return result;
            }

            if (isMapUpdate())
            {
                String result = arguments[0].ToString() + "[";
                for (int i = 1; i < arguments.count - 1; i++)
                {
                    result += arguments[i].ToString();
                    if (i < arguments.count-2)
                        result += ",";
                }
                result += " := " + arguments[arguments.count-1].ToString() + "]";
                return result;
            }

            {
                System.String result = function.ToString();
                if (arguments.count > 0)
                {
                    int i = arguments.count;
                    result += "(";

                    foreach (Term e in arguments)
                    {
                        result += e.ToString();
                        if (i > 1)
                            result += ",";
                        i--;
                    }

                    result += ")";
                }

                return result;
            }
        }
        ///////////////////////////////////////////////////////////
        private bool isInfixBinary()
        {
            if (arguments.count != 2)
                return false;

            return
                   (function.ToString().Equals("=="))
                || (function.ToString().Equals("!="))
                || (function.ToString().Equals("&&"))
                || (function.ToString().Equals("||"))
                || (function.ToString().Equals("==>"))
                || (function.ToString().Equals("<==>"))
                || (function.ToString().Equals("<"))
                || (function.ToString().Equals(">"))
                || (function.ToString().Equals("<="))
                || (function.ToString().Equals(">="))
                || (function.ToString().Equals("<:"))
                || (function.ToString().Equals("++"))
                || (function.ToString().Equals("+"))
                || (function.ToString().Equals("-"))
                || (function.ToString().Equals("*"))
                || (function.ToString().Equals("/"))
                || (function.ToString().Equals("%"))
            ;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private bool isPrefixUnary()
        {
            if (arguments.count != 1)
                return false;

            return
                   (function.ToString().Equals("-"))
                || (function.ToString().Equals("!"))
            ;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private bool isMapSelect()
        {
            if (arguments.count < 2)
                return false;

            return
                   (function.ToString().Equals("MapSelect"))
            ;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private bool isMapUpdate()
        {
            if (arguments.count < 3)
                return false;

            return
                   (function.ToString().Equals("MapStore"))
            ;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        public Logic.Function function  { get; private set; }
        public ExpressionList           arguments { get; private set; }
    }
}
