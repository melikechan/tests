#include <iostream>
#include <thread>

using namespace std;

int main()
{
    int n;
    cin >> n;

    const int num_threads = 1;

    thread threads[num_threads];

    const int num_iterations = 100000;

    for (int i = 0; i < num_threads; i++)
    {
        threads[i] = thread([i, &n]
                            {
                                for (int j = 0; j < num_iterations / num_threads; j++)
                                {
                                    cout << n << endl;
                                    // wait for the other thread
                                } });
    }

    for (int i = 0; i < num_threads; i++)
    {
        threads[i].join();
    }
    cout << n;
    return 0;
}
