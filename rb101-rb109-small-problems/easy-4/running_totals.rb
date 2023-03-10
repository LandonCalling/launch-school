=begin
---------------- Problem
Restate Problem:

Input: an array of integers

Output: an array representing the running total of the elements up to that point.

Rules:  
  - empty arrays return empty array

---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- iterate through the array
  - add value to running total
  - push value to new array
- return new array
=end

def running_total(array)
  sum = 0
  totals = []
  
  array.each do |number|
    sum += number
    totals << sum
  end
  
  totals
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []