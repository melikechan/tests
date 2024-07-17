using System;
using System.Collections.Generic;
namespace submission
{
    class Program
    {
        static void Main(string[] args)
        {
            List<long> list = new List<long>();

            // 5e7 * 8 bytes = 400 MB
            for (int i = 0; i < 5e7; i++)
            {
                list.Add(i);
            }

            Console.WriteLine(list.Count);
        }
    }
}
