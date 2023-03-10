=begin
---------------- Problem
Restate Problem:

Input: integer

Output: string representation of the integer

Rules: 
  - integer will always be 0 or positive
  - can't use any of the standard conversion methods
  
---------------- Modelling / Examples


---------------- Data Structures
array for storing individual digits
array for the conversion map from digit to string

---------------- Scratchpad


---------------- Algorithm
- convert integer into an array of digits
- convert digits to strings
  - iterate through the Array
    - check each element against map array
    - replace each element with desired char
- join back together as one string
- retunr string
=end

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  array_chars = number.digits.reverse.map { |int| DIGITS[int] }
  array_chars.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'