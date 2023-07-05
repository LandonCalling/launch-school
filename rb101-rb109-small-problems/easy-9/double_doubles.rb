=begin
---------------- Problem
Restate Problem: Given an integer, determine if it is a double number.
  Return the number if it is a double number, ohterwise return double the given
  integer.

Input: Integer

Output: Integer: either the int itself or 2*the int

Rules: 
  - double number is an integer that has an even number of digits and the
    first half of the digits are the same as the last half:  i.e. 103103
  - these are not doulbe ints: 444, 334433, 107

Assumptions: 

---------------- Modelling / Examples
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- if the number is a double number return given int
- otherwise return int * 2

- double number ?
  - has an even number of digits
  - first half matches last half

- halves match ?
  - split int into an array of digits
  - split into first half and last half
    - first half is 0 to length / 2 - 1
    - second half is length / 2 to -1
  - set matching flag to true
  - iterate through first half
    - compare element to corresponding element from last half
      - if they don't match change the matching flag to false
  - return matching flag
=end

def halves_match?(int)
  digits = int.digits.reverse
  middle = digits.size / 2
  first_half, last_half = digits[0...middle], digits[middle..-1]
  matching = true

  first_half.each_with_index do |element, index|
    matching = false unless element == last_half[index]
  end

  matching
end

def double_number?(int)
  int.digits.size.even? && halves_match?(int)
end

def twice(int)
  double_number?(int) ? int : int * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
