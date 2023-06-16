=begin
The Array#pop method destructively removes the last element from the calling
array and returns it. The String#size method returns the length of the calling
string.

Since we are chainign Array#pop with String#size, it will return the length
of the last element of the calling array.  In this case that length is 11.
=end

['ant', 'bear', 'caterpillar'].pop.size