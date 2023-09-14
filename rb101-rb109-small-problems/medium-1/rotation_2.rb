=begin
---------------- Problem
Restate Problem: Given two integers, rotate the nth digit of the first number
  to the end.  i.e. if the two integers are 735291 and 2 the result should be
  735219

Input: two integers

Output: integer

Rules:
  - a value of 1 for the digit to rotate should return the same number

Assumptions: 
  - place digit is always a positive integer
  - will never exceed the number of digits in the given int

---------------- Modelling / Examples
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm

=end

def rotate_array(array)
  copy = array.dup
  copy << copy.shift
end

def rotate_rightmost_digits(int, place)
  digits_array = int.digits.reverse
  rotated_array = digits_array[0...-place] +
                  rotate_array(digits_array[-place..-1])
  rotated_array.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917