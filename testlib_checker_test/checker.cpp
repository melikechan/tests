// Barebones checker example

#include "testlib.h"

#include <fstream>
#include <iostream>
#include <set>
#include <vector>

using namespace std;

/* 
    Convention of the checker:
    ./checker <input_file> <output_file_to_check> <output_file>
    - <input_file>: The input file of the problem.
    - <output_file_to_check>: The output file to check.
    - <output_file>: The output file of the actual solution.
*/
int main(int argc, char *argv[])
{
    registerTestlibCmd(argc, argv);

    int n = inf.readInt();

    vector<int> v;
    set<int> s;

    int maxx = 0;
    for (int i = 0; i < n; i++)
    {
        int x = inf.readInt();
        v.push_back(x);

        if (x > maxx)
        {
            maxx = x;
        }
    }

    for (int i = 0; i < n; i++)
    {
        if (v[i] == maxx)
        {
            s.insert(i);
        }
    }

    int m;
    m = ouf.readInt();

    if (s.find(m) == s.end())
    {
        quitf(_wa, "%d is not the index of the maximum element", m);
    }
    else
    {
        quitf(_ok, "%d is the index of the maximum element", m);
    }

    return 0;
}
