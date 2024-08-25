n = (gets || "").chomp.to_i

arr = (gets || "").chomp.split(" ").map { |s| s.to_i }

max = arr.max
max_index = arr.index(max)

puts -1