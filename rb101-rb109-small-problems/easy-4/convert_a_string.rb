=begin
---------------- Problem
Restate Problem:

Input: a string containing digits only

Output: the number as an integer

Rules: 
  - don't worry about leading + or - signs
  - don't worry about invalid characters
  - 
---------------- Modelling / Examples


---------------- Data Structures
array to map the characters to their integer value

---------------- Scratchpad
use array index to map number values
- i.e. %w(0 1 2 ... 9)

length of the string is important.  Determines how many places there are
in the number.

EX:
0123 index
4321 digit

length = 4
4321 = 4 * 1000 + 3 * 100 + 2 * 10 + 1 
     = 4 * 10^3 + 3 * 10^2 + 2 * 10^1 + 1 * 10^0

reverse index order.  reverse the digits first to calculate the number

0123 index
1234 reversed digits
---------------- Algorithm
- break string into array of characters,
- reverse the array
- iterate through the array adding the elements
  - map the char to its digit
  - for each element multiply that digit by 10 to the power of the index
  - add to sum
- return the summation
=end

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(string_num)
  array = string_num.chars.reverse
  array.map! { |char| DIGITS.index(char) }
  
  sum = 0
  
  array.each_with_index do |number, idx|
    sum += number * 10 ** idx
  end
  
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570