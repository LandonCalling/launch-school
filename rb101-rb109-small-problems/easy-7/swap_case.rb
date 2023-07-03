=begin
---------------- Problem
Restate Problem: Given a string of words, return a string with all the
  characters in the string having their cases swapped.  Thus all uppercase
  letters would be lowercase, and all lowercase letters would be uppercase.

Input: string of words

Output: string with all chars case swapped

Rules: 

Assumptions: 
  - only alphabetic characters and spaces
  - no empty strings

---------------- Modelling / Examples
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

---------------- Data Structures
array of lowercase letters
array of uppercase letters

---------------- Scratchpad


---------------- Algorithm
- split the string into words and iterate
  - split word into array of characters and iterate through
    - if character is uppercase, swap for lowercase
    - otherwise swap for uppercase
  - join char array back into word string
- join word array back into string
=end

UPPERCASE_LETTERS = ('A'..'Z').to_a

def swapcase(string)
  result = string.split.map do |word|
    swapped_word = word.chars.map do |char|
      if UPPERCASE_LETTERS.include?(char)
        char.downcase
      else
        char.upcase
      end
    end

    swapped_word.join
  end

  result.join(' ')
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'