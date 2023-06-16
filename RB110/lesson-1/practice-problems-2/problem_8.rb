# What happens when we modify an array while we are iterating over it?
# What would be output by the two snippets of code below

# When we modify an array we are iterating over we end up with unexpected
# results.  This is because we are not iterating over a copy of the array
# we are iterating over the array itself.  This also happens because the
# data about the length of the array is updated every time the method
# iterates.  It could mean skipping some elements of the iteration, doing
# an element more than once, or even erroring out because our iteration
# went out of bounds.

=begin
Code snippet 1 - In this case The numbers 1 and 3 would be output, because
  the iteration will first print one, then remove 1 from the array.  This
  makes element 2 the new first position.  So when it advances to the next
  space, it will move to 3.  Then three is printed, and the element 2 is
  removed from the array.  Which makes element 3 the new first element and
  element 4 the new second element.  After this it stops, because it has 
  reached the end of the array.
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin
Code snippet 2 - In this case, the numbers 1 and 2 will be printed. In the
  first iteration, 1 is printed and then 4 is removed from the array.  Then
  2 is printed and 3 is removed from the array.  At this point it has reached
  the end of the array, so it stops iterating.
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end