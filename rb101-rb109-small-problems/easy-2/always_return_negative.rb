=begin
---------------- Problem
Restate Problem:

Input: 
  - integer
Output: 
  - integer
Rules: 
  - if argument is positive it returns the negative of that number
  - if argument is negative or zero it returns the original number
  
---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- is number less than or equal to zero
  - return number
- otherwise return number times -1
=end

def negative(number)
  return number if number <= 0
  
  number * -1
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby