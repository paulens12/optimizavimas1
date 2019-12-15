using System;
using System.Collections.Generic;
using System.Linq;
using static MoreLinq.Extensions.MinByExtension;

namespace tiesinis
{
    struct TableauRow
    {
        public int PivotIndex;
        public readonly double[] Values;
        public double Answer;

        public TableauRow(int pIdx, double[] values, double ans)
        {
            PivotIndex = pIdx;
            Values = values;
            Answer = ans;
        }
    }

    struct Tableau
    {
        public readonly TableauRow[] Rows;
        public TableauRow ResultRow;
        private readonly string[] mColNames;

        public Tableau(double[] min, double[][] constraintsLE)
        {
            Rows = new TableauRow[constraintsLE.Length];
            int vars = min.Length;

            mColNames = new string[vars + constraintsLE.Length + 1];
            for (int i = 0; i < vars; i++)
                mColNames[i] = "x" + (i + 1);
            for (int i = 0; i < constraintsLE.Length; i++)
                mColNames[vars + i] = "s" + (i + 1);
            mColNames[vars + constraintsLE.Length] = "p";

            for (int i = 0; i < constraintsLE.Length; i++)
            {
                if (constraintsLE[i].Length != vars + 1)
                    throw new Exception();

                List<double> values = new List<double>(constraintsLE[i]);
                values.RemoveAt(vars);
                for (int j = 0; j < i; j++)
                    values.Add(0);
                values.Add(1);
                for (int j = i; j < constraintsLE.Length; j++)
                    values.Add(0);

                Rows[i] = new TableauRow(vars + i, values.ToArray(), constraintsLE[i][vars]);
            }

            List<double> eqValues = new List<double>(min);
            for (int i = 0; i < constraintsLE.Length; i++)
                eqValues.Add(0);
            eqValues.Add(1);

            ResultRow = new TableauRow(vars + constraintsLE.Length, eqValues.ToArray(), 0);
        }

        public void Print(Action<string> writeLine)
        {
            string header = string.Join(" | ", new[]{"          "}.Concat(mColNames.Select(name => $"{name,10}")).Append("Answer"));

            string spacer = new String('-', header.Length + 4);
            writeLine(header);
            writeLine(spacer);

            foreach (var row in Rows)
            {
                writeLine(string.Join(" | ", new[]{$"{mColNames[row.PivotIndex],10}"}.Concat(row.Values.Select(v => $"{v,10}")).Append($"{row.Answer,10}")));
            }
            writeLine(spacer);
            writeLine(string.Join(" | ", new[]{$"{mColNames[ResultRow.PivotIndex],10}"}.Concat(ResultRow.Values.Select(v => $"{v,10}")).Append($"{ResultRow.Answer,10}")));
        }
    }

    class Program
    {
        static void SolveWithSimplex(Tableau tableau, double e)
        {
            while (tableau.ResultRow.Values.Any(v => v < 0))
            {
                tableau.Print(Console.WriteLine);
                Console.WriteLine();
                Console.WriteLine();
                Console.WriteLine();

                int pivotColumn = tableau.ResultRow.Values.Select((v, i) => new { idx = i, value = v })
                    .OrderBy(vi => vi.value).FirstOrDefault(vi => vi.value < 0)?.idx ?? -1;
                if (pivotColumn == -1)
                    break;

                int pivotRowIdx = tableau.Rows.Select((row, i) => new { row, i })
                                      .Where(ri => ri.row.Values[pivotColumn] > 0)
                                      .MinBy(ri => ri.row.Answer / ri.row.Values[pivotColumn])
                                      .FirstOrDefault()?.i ?? -1;
                if (pivotRowIdx == -1)
                    break;

                tableau.Rows[pivotRowIdx].PivotIndex = pivotColumn;
                TableauRow pivotRow = tableau.Rows[pivotRowIdx];
                for (int i = 0; i < tableau.Rows.Length; i++)
                {
                    if(i != pivotRowIdx)
                        ClearCell(ref tableau.Rows[i], pivotRow, pivotColumn, e);
                }
                ClearCell(ref tableau.ResultRow, pivotRow, pivotColumn, e);
            }
            tableau.Print(Console.WriteLine);
        }

        private static void ClearCell(ref TableauRow thisRow, TableauRow pivotRow, int pivotColumn, double e)
        {
            if (Math.Abs(thisRow.Values[pivotColumn]) > e)
            {
                double thisValue = thisRow.Values[pivotColumn];
                double pivotValue = pivotRow.Values[pivotColumn];

                if (Math.Sign(thisValue) == Math.Sign(pivotValue))
                    pivotValue = -Math.Abs(pivotValue);
                else
                    pivotValue = Math.Abs(pivotValue);
                thisValue = Math.Abs(thisValue);

                for (int j = 0; j < pivotRow.Values.Length; j++)
                    thisRow.Values[j] = pivotValue * thisRow.Values[j] + thisValue * pivotRow.Values[j];
                thisRow.Answer = pivotValue * thisRow.Answer + thisValue * pivotRow.Answer;
            }
        }

        static void Main()
        {
            Console.WriteLine("8, 10, 3:");
            Console.WriteLine();
            Tableau tab = new Tableau(
                new[] { 2.0, -3, 0, -5 },
                new[]
                {
                    new[] { -1.0, 1, -1, -1, 8 },
                    new[] { 2.0, 4, 0, 0, 10 },
                    new[] { 0.0, 0, 1, 1, 3 }
                });
            SolveWithSimplex(tab, 0.000001);
            Console.WriteLine();
            Console.WriteLine();

            Console.WriteLine("6, 0, 8:");
            Console.WriteLine();
            Tableau tab2 = new Tableau(
                new[] { 2.0, -3, 0, -5 },
                new[]
                {
                    new[] { -1.0, 1, -1, -1, 6 },
                    new[] { 2.0, 4, 0, 0, 0 },
                    new[] { 0.0, 0, 1, 1, 8 }
                });

            SolveWithSimplex(tab2, 0.000001);
        }
    }
}
