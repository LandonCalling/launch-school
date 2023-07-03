=begin
---------------- Problem
Restate Problem: Given two arrays of the same length, create a new array with
  the elements of both arrays that are alternated between.

Input: two arrays

Output: an array with all of the elements alternated

Rules: 
  - both arrays are the same length
  - both arrays are non-empty
  - alternated as follows
    - array 1: [a1, a2, a3]
    - array 2: [b1, b2, b3]
    - returned array: [a1, b1, a2, b2, a3, b3]

Assumptions: 

---------------- Modelling / Examples
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create new array
- calculate size of arrays
- using size of arrays iterate and push each element to new array
- return array
=end

def interleave(first_arr, second_arr)
  result = []

  first_arr.length.times do |index|
    result << first_arr[index]
    result << second_arr[index]
  end

  result
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']