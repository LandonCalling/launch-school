=begin
---------------- Problem
Restate Problem:

Input: string representing an integer, possibly with a sign in front

Output: integer version of the string passed in

Rules: 
  - assume input is always valid
  - may have a sign in front
    - if no sign return positive number
    - if + sign return positive number
    -  if - sign return negative number
---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- set sign value equal to positive 1
- remove first char of string if it is not a number
  - check first char against number array. if not found remove and store
  - if first char was removed check to see if it was a - sign
    - if it was a - sign change the sign value to -1
-convert remaining string into a number
- multipy by sign value
- return number
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

def string_to_signed_integer(string_num)
  sign_value = 1
  
  if !(DIGITS.include?(string_num[0]))
    sign_value = -1 if string_num[0] == '-'
    string_num = string_num[1..-1]
  end
  
  number = string_to_integer(string_num)
  number * sign_value
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100