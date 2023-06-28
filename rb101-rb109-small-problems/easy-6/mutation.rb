array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
Array two will also have the elements starting with 'C' and 'S'
upcased, because when we push the individual values to array2
they are the same objects that are in array1.

Meaning that array2 and array1 are pointing to the same spots in memory.
Thus if we upcase any of the elements in array1 it will upcase the same
elements in array2
=end