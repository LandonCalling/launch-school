=begin
---------------- Problem
Restate Problem:

Input: 

Output: 

Rules: 

---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm

=end

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  array_chars = number.digits.reverse.map { |int| DIGITS[int] }
  array_chars.join
end

def signed_integer_to_string(number)
  return '0' if number == 0
  
  if number.abs == number
    '+' + integer_to_string(number)
  else
    '-' + integer_to_string(number.abs)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'