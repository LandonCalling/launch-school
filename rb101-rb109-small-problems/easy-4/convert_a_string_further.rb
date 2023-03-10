DIGITS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def hexadecimal_to_integer(string_num)
  array = string_num.downcase.chars.reverse
  array.map! { |char| DIGITS.index(char) }
  
  sum = 0
  
  array.each_with_index do |number, idx|
    sum += number * 16 ** idx
  end
  
  sum
end

puts hexadecimal_to_integer('4D9f') == 19871