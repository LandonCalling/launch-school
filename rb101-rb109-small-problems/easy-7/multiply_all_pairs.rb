=begin
---------------- Problem
Restate Problem: Given two arrays, return an array with all possible pairs
  multiplied.

Input: two arrays of varying length

Output: one array with all possible multiples

Rules:
  - results should be sorted by increasing value

Assumptions: no empty arrays

---------------- Modelling / Examples
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create result array
- iterate through the first array
  - iterate through the second array
    - multiply element from first array by elemenht from second array
    - push product to result array
- sort result array and return
=end

def multiply_all_pairs(first_arr, second_arr)
  result = []

  first_arr.each do |num1|
    second_arr.each { |num2| result << num1 * num2 }
  end

  result.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]