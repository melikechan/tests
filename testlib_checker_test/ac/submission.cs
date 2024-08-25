using System;
using System.Collections.Generic;
using System.Linq;

namespace submission
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine().Trim());

            List<int> v = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int maxx = v[0];
            int maxxi = 0;

            for (int i = 1; i < n; i++)
            {
                if (v[i] > maxx)
                {
                    maxx = v[i];
                    maxxi = i;
                }
            }

            Console.WriteLine(maxxi);
        }
    }
}