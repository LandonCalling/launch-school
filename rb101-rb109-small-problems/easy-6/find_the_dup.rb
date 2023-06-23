=begin
---------------- Problem
Restate Problem: Given an array of unordered numbers, find the duplicate
  number that is present in the array

Input: array of numbers

Output: integer that is the duplicate integer in the array

Rules: - there will be a duplicate in the array
       - all elements of array are integers
       - integers are unordered

Assumptions: 

---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- sort array
- iterate through array comparing nth element to n+1 element
- return current element if it equals next element
=end

def find_dup(num_arr)
  num_arr = num_arr.sort
  num_arr.each_with_index do |number, index|
    return number if number == num_arr[index + 1]
  end
end

puts find_dup([1, 5, 3, 1]) == 1
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73