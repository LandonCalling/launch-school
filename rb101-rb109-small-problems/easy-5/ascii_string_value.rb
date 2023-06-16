=begin
---------------- Problem
Restate Problem: Determine the ascii string value of a given string using
  the ascii value of each character in the string.  Use the method
  String#ord to perform the conversion.  Ascii string value is the sum
  of all the ascii values of each char in the string.

Input: String

Output: Integer representing the sum of the ascii values of chars in the string

Rules: Use the method String#ord to perform the conversion from char to ascii
  value

  empty string must return 0

---------------- Modelling / Examples
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- Divide the string into an array of characters
- iterate over the string
  - convert each char to an ascii value
  - add to total
-return total
=end

def ascii_value(string)
  total = 0
  string.chars.each do |char|
    total += char.ord
  end

  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0