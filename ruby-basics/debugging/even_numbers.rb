numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers # expected output: [2, 6, 8]

=begin
  The map method is used for transformation, and always returns a value
  to the new array even if that value is nil.  What we want here is the
  select method.  that will only return the values to the new array that
  match the condition.
=end