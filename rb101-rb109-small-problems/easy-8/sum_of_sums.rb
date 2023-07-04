=begin
---------------- Problem
Restate Problem:  Given an array of numbers find the sum of each leading
  leading subsequence of the array.

Input: array of integers

Output: integer representing the sum of each subsequence in the array

Rules: 

Assumptions: all arrays will contain at least one value

---------------- Modelling / Examples
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create result
- find length of array
- loop a number of times equal to the length of the array
  - get slice of array in range (0..current_iteration)
  - add each element of slice to result
- return result
=end

def sum_of_sums(array)
  result = 0

  array.size.times { |current| result += array[0..current].inject(:+) }

  result
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35