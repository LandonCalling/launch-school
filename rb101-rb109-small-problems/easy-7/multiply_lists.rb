=begin
---------------- Problem
Restate Problem: Given two arrays of integers, multiply the arrays element by
  element and return the result

Input: two arrays of integers

Output: array with elements multiplied

Rules: 

Assumptions: both arrays have the same length

---------------- Modelling / Examples
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create result array
- iterate through first array
  - multiply element with corresponding element from other array
  - push to result array
- return result
=end

def multiply_list(first_arr, second_arr)
  result = []

  first_arr.each_with_index do |num, idx|
    result << (num * second_arr[idx])
  end

  result
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]