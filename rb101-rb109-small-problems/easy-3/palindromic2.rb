=begin
---------------- Problem
Restate Problem:

Input: 
  - string
Output: 
  - boolean representing whether or not the string was a palindrome
Rules: 
  - case insensitive
  - ignore all non-alphanumeric characters
---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- make string all lowercase letters
- remove everything that is not an ALPHANUM
- check to see if it is a palindrome

- 
=end

def palindrome?(input)
  half = input.length / 2 - 1 

  for idx in 0..half do
    return false unless input[idx] == input[-(idx + 1)]
  end
  
  return true
end

def real_palindrome?(string)
  array = string.downcase.chars
  array = array.select { |i| i =~ /[[:alnum:]]/ }
  
  palindrome?(array)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false