=begin
---------------- Problem
Restate Problem: Given two integers representing a count and starting value,
  return an array with count elements with the elements being multiples of the
  starting value.

Input: two integers, a count int and a starting value int

Output: an array with count number of elements

Rules: a 0 for the count should return an empty array

Assumptions: 

---------------- Modelling / Examples


---------------- Data Structures


---------------- Satchpad


---------------- Algorithm
- create result array
- loop a number of times equal to count
  - multiply current iteration by starting value
  - push to new array
- return result array
=end

def sequence(count, start)
  result = []

  count.times { |multiple| result << (multiple + 1) * start }

  result
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []