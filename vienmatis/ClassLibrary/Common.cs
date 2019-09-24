using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OxyPlot;
using OxyPlot.Annotations;
using OxyPlot.Series;

namespace ClassLibrary
{
    public static class Common
    {
        private const string FloatFormat = "G17";
        private const double a = 0;
        private const double b = 8;

        public static double F(double x)
        {
            double r = x * x - a;
            return r * r / b - 1;
        }

        public static double Fprime1(double x) => 4 * x * (x * x - a) / b;

        public static double Fprime2(double x) => 4 * (3 * x * x - a) / b;

        public static void AddVerticalLine(this PlotModel pm, double x, string name)
        {
            var line = new LineAnnotation
            {
                Type = LineAnnotationType.Vertical,
                X = x,
                Text = name + ": " + x.ToString(FloatFormat) + ", " + F(x).ToString(FloatFormat)
            };
            pm.Annotations.Add(line);
        }
    }
}
