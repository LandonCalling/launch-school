=begin
---------------- Problem
Restate Problem: given an array, create and return a new array with the
  elements reversed

Input: array

Output: array with the elements of given array reversed

Rules: 
  - cannot use Array#reverse or Array#reverse!
  - cannot use method written in the previous exercise

Assumptions: 

---------------- Modelling / Examples
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- store length of array as counter variable
- create new array
- while counter greater than or equal to zero
  - push the element of array[counter] to new array
  - decrement counter
- return new array
=end

def reverse(array)
  counter = array.length - 1
  reversed_array = []

  while counter >= 0
    reversed_array.push(array[counter])
    counter -= 1
  end

  reversed_array
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
