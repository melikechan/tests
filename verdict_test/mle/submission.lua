n = io.read("*number")

array = {}

for i = 1, 100000000 do
    array[i] = i
end

print(array[n])