#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n;
    scanf("%d", &n);

    // 5 * 1e7 * 8 = 400000000 bytes = ~382 MB
    long long *arr = (long long *)calloc(5 * 10000000, sizeof(long long));
    for (int i = 0; i < 5 * 10000000; i++)
    {
        arr[i] = i;
    }

    printf("memory allocated\n");
    return 0;
}
