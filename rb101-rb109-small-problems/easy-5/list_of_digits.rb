=begin
---------------- Problem
Restate Problem: Given a positive integer, return an array of the digits
in the integer given.

Input: positive integer

Output: array of the digits in the integer

Rules: digits in array must be in the order they are in the given integer
       integer will be positive

Assumptions: 

---------------- Modelling / Examples
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm

=end

def digit_list(number)
  number.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true