=begin
The Enumerable#each_with_object takes an object as an argument, that is
returned after executing the block for each element.

Inside the block we are creating a new hash key/value pair, with the first
letter of the element passed to the block as the key, and the element as the
value.  Thus the object returned is a hash with the following key/value pairs.

{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
=end

hsh = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p hsh