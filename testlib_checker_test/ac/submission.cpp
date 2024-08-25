#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int n;
    cin >> n;

    vector<int> v;
    for (int i = 0; i < n; i++)
    {
        int x;
        cin >> x;
        v.push_back(x);
    }

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

    cout << maxxi;
    return 0;
}