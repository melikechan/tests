// Barebones interactor example

#include "../binary_search/testlib.h"

#include <iostream>
#include <csignal>
#include <unistd.h>

using namespace std;

const int IDLENESS_TIME = 1;

/*
    Convention of the interactor:
    ./checker <input_file> <output_file_to_check> <output_file>
    - <input_file>: The input file of the problem.
    - <output_file_to_check>: The output file to check.
    - <output_file>: The output file of the actual solution.
*/
void idleness(int signum)
{
    if (signum == SIGALRM)
    {
        // Exit code for idleness is 8
        exit(8);
    }
}

int main(int argc, char *argv[])
{
    registerInteraction(argc, argv);

    signal(SIGALRM, idleness);

    int n = inf.readInt();

    for (int i = 0; i < n; i++)
    {
        alarm(IDLENESS_TIME);

        int a = inf.readInt();
        int b = inf.readInt();

        alarm(0);

        // writes query to the solution, endl makes flush
        cout << a << " " << b << endl;

        // writes output file to be verified by checker later
        tout << ouf.readInt() << endl;
    }

    quitf(_ok, "%d queries processed", n);
}