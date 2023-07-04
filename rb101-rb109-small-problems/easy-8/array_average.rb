=begin
---------------- Problem
Restate Problem: Given an array of integers, find and return the average
 of all numbers in the array

Input: array of integers

Output: integer representing the average of all numbers in the array

Rules: 
  - no empty arrays
  - numbers will always be positive integers
  - result should be an integer
  - can't use Array#sum

Assumptions: 

---------------- Modelling / Examples
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- iterate through array
  - add each value in the array to a total variable
- divide total by array length
- return average
=end

def average(array)
  array.inject(:+) / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40