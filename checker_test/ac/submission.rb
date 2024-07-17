n = gets
n = n.chomp.to_i

array = gets.split(" ").map(&:to_i)

max = array.max

for i in 0..n-1
  if array[i] == max
    puts i
    break
  end
end