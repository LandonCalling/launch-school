def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0) # <== First error
find_first_nonzero_among(1) # <== Second error

=begin
1. The first error raised is a wrong number of arguments given error,
   becauase the method is expecting one and six were given.
2. The second error is an undefined method error.  This occurs because
   the first line in the method we've written is a call to the each method. 
   Since we passed an integer to our method, there is no each method
   defined for integers.

To fix both of these we would need to input a data type that includes the
each method.  Most likely by making each set of numbers an array.
=end