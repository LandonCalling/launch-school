=begin
---------------- Problem
Restate Problem: Given an array, return a new array with the first element
  rotated to be the last

Input: 

Output: 

Rules: 
  - Cannot mutate original array
  - Canoot use Array#rotate or Array#rotate!

Assumptions: 

---------------- Modelling / Examples
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create a copy of the array
- remove the first element and push it to the end of the copy
=end

def rotate_array(array)
  copy = array.dup
  copy << copy.shift
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true