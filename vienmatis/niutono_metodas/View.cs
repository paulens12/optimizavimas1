using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibrary;
using OxyPlot;
using OxyPlot.Series;

namespace niutono_metodas
{
    public class View
    {
        public View()
        {
            this.MyModel = new PlotModel { Title = "Niutono metodas" };
            this.MyModel.Series.Add(new FunctionSeries(Common.F, 0, 10, 0.001, "generuojanti funkcija"));
            //this.MyModel.AddVerticalLine(2.245, "test");

            Console.WriteLine(dalink(5, Common.Fprime1, Common.Fprime2, 0.0001, 1));
        }

        private double dalink(double x, Func<double, double> f1, Func<double, double> f2, double e, int step)
        {
            double xNew = x - f1(x) / f2(x);

            this.MyModel.AddVerticalLine(xNew, step.ToString());

            if (Math.Abs(xNew - x) < e)
            {
                return xNew;
            }

            return dalink(xNew, f1, f2, e, step + 1);
        }

        public PlotModel MyModel { get; private set; }
    }
}
