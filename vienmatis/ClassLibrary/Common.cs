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

        public static double F(double x)
        {
            double a = 0;
            double b = 8;
            double r = x * x - a;
            return r * r / b - 1;
        }

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
