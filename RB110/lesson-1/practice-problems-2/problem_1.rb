=begin
Given the array below, turn the array into a hash where the names are the keys
and the values are the positions in the array.
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index { |name, idx| flintstones_hash[name] = idx }

p flintstones_hash