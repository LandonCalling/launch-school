=begin
---------------- Problem
Restate Problem: Given an array, return a new array with only the elements
  in the 1st, 3rd, 5th, etc positions.

Input: array

Output: array

Rules: 
  - 1st position corresponds to index 0
  - an empty array should return an empty array

Assumptions: 

---------------- Modelling / Examples
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- iterate through the given array
  - if the index is even, select it
=end

def oddities(array)
  array.select.with_index { |_, idx| idx.even? }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]