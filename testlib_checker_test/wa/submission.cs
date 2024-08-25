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

            Console.WriteLine(-1);
        }
    }
}