# Create a hash that expresses the frequency with which each letter occurs
# in the string below.

# ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

char_freq_hash = statement.chars.each_with_object({}) do |char, hash| 
  hash[char] = statement.count(char)
end

p char_freq_hash