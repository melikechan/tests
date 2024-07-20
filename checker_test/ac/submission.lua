n = io.read("*number")

arr = {}

for i = 1, n do
    arr[i] = io.read("*number")
end

max = arr[1]
max_index = 1

for i = 2, n do
    if arr[i] > max then
        max = arr[i]
        max_index = i
    end
end

io.write(max_index)