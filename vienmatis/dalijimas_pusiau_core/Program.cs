﻿using System;
using NumSharp;
using PlotNET;
using GnuPlotSharp;


namespace dalijimas_pusiau
{
    static class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(f(0));
            
            Plotter plt = new Plotter();
            plt.Plot(f, -10, 10, 0.01, "test9inggg").Show();
        }

        public static Plotter Plot(this Plotter plt, Func<double, double> func, double minX, double maxX, double stepX, string name)
        {
            int size = (int)((maxX - minX) / stepX) + 1;
            double[] xa = new double[size];
            double[] ya = new double[size];
            int i = 0;
            for (double x = minX; x <= maxX; x += stepX)
            {
                xa[i] = x;
                ya[i++] = func(x);
            }

            return plt.Plot(xa, ya, name, ChartType.Scatter);
        }

        // ReSharper disable once InconsistentNaming
        private static double f(double x)
        {
            double a = 0;
            double b = 8;
            double r = x * x - a;
            return r * r / b - 1;
        }

    }
}