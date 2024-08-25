n = int(input().strip())

v = list(map(int, input().split()))

maxx = v[0]
index = 0
for i in range(n):
    if v[i] > maxx:
        maxx = v[i]
        index = i

print(index)
