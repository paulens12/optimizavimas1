using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibrary;
using OxyPlot;
using OxyPlot.Series;

namespace dalijimas_pusiau_wpf
{
    public class View
    {
        public View()
        {
            this.MyModel = new PlotModel {Title = "dalijimas pusiau"};
            this.MyModel.Series.Add(new FunctionSeries(Common.F, 0, 10, 0.001, "generuojanti funkcija"));
            //this.MyModel.AddVerticalLine(2.245, "test");

            Console.WriteLine(dalink(0, 10, Common.F, 0.0001, 1));
        }

        private double dalink(double xMin, double xMax, Func<double, double> f, double e, int step)
        {
            double l = xMax - xMin;
            double xMid = (xMin + xMax) / 2;
            if (l < e)
                return xMid;
            double x1 = xMin + l / 4;
            double x2 = xMax - l / 4;
            if (f(x1) < f(xMid))
            {
                this.MyModel.AddVerticalLine(xMid, step.ToString());
                return dalink(xMin, xMid, f, e, step + 1);
            }

            if (f(x2) < f(xMid))
            {
                this.MyModel.AddVerticalLine(xMid, step.ToString());
                return dalink(xMid, xMax, f, e, step + 1);
            }
            this.MyModel.AddVerticalLine(x1, step.ToString());
            this.MyModel.AddVerticalLine(x2, step.ToString());
            return dalink(x1, x2, f, e, step + 1);
        }

        public PlotModel MyModel { get; private set; }
    }
}
