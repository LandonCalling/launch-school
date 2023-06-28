=begin
---------------- Problem
Restate Problem:

Input: 
  - array
  - search value

Output: true/false

Rules: elements of array and search value can be any type

Assumptions: 

---------------- Modelling / Examples
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- iterate through the given array
  - if the current value matches the search value return true
- return false
=end

def include?(array, search_value)
  array.each { |element| return true if element == search_value }
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false