// Barebones checker example

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
    /// This example takes input to check the user output.
    fstream fin(argv[1]);
    fstream fout(argv[2]);

    int n;
    fin >> n;

    vector<int> v;
    set<int> s;

    int maxx = 0;
    for (int i = 0; i < n; i++)
    {
        int x;
        fin >> x;
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
    fout >> m;

    if (s.find(m) == s.end())
    {
        cout << m << " is not the index of the maximum element";
        exit(1);
    }
    else
    {
        cout << m << " is the index of the maximum element";
        exit(0);
    }

    return 0;
}
