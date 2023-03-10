DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  array_chars = number.digits.reverse.map { |int| DIGITS[int] }
  array_chars.join
end

def signed_integer_to_string(number)
  return '0' if number == 0
  
  string_num = integer_to_string(number.abs)
  
  if number.abs == number
    '+' + string_num
  else
    '-' + string_num
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'