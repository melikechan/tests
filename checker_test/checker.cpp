#include <iostream>
#include <set>
#include <vector>
#include <fstream>

using namespace std;

int main(int argc, char *argv[])
{
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
