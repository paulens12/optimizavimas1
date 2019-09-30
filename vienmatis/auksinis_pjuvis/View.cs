using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibrary;
using OxyPlot;
using OxyPlot.Series;

namespace auksinis_pjuvis
{
    class View
    {
        public View()
        {
            this.MyModel = new PlotModel { Title = "auksinis pjuvis" };
            this.MyModel.Series.Add(new FunctionSeries(Common.F, 0, 10, 0.001, "generuojanti funkcija"));
            //this.MyModel.AddVerticalLine(2.245, "test");

            double minX = dalink(0, 10, Common.F, 0.0001, 1);
            Console.WriteLine(minX);
            Console.WriteLine(Common.F(minX));
        }

        private readonly double fibN = (Math.Sqrt(5) - 1) / 2;

        private double dalink(double xMin, double xMax, Func<double, double> f, double e, int step)
        {
            double l = xMax - xMin;
            double x1 = xMax - fibN * l;
            double x2 = xMin + fibN * l;

            if (l < e)
            {
                Console.WriteLine("steps: " + step);
                if (f(x1) < f(x2))
                    return x1;
                return x2;
            }

            if (f(x2) < f(x1))
            {
                this.MyModel.AddVerticalLine(x1, step.ToString());
                return dalink(x1, xMax, f, e, step + 1);
            }

            this.MyModel.AddVerticalLine(x2, step.ToString());
            return dalink(xMin, x2, f, e, step + 1);
        }

        public PlotModel MyModel { get; private set; }
    }
}
