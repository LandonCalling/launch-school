=begin
---------------- Problem
Restate Problem: Given a string, return a new string with the consonants
  doubled.  No vowels, digits, punctuation, or whitespace should be doubled.

Input: string

Output: string with consonants doubled

Rules: 
  - empty string should return an empty string
  - The following char types should not be doubled
    - vowels
    - digits
    - punctuation
    - whitespace
Assumptions: 

---------------- Modelling / Examples
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create result string
- iterate through the string
  - if the char is a consonant - double it
  - otherwise leave as is
  - push char/double char to result string
- return result string
=end

def alpha_char?(char)
  char =~ /[aeiou0-9\s[:punct:]]/i
end

def double_consonants(string)
  result = ''

  string.chars.each do |char|
    result += char
    result += char unless alpha_char?(char)
  end

  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""