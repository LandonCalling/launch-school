=begin
---------------- Problem
Restate Problem:

Input: 
  - string
Output: 
  - boolean representing whether the string is a palindrome or not.
Rules: 
  - case matters
  - punctuation matters
  - spaces matter
  - palindrome is a string that reads the same forward and backward.
---------------- Modelling / Examples


---------------- Data Structures
array of characters

---------------- Scratchpad
if we perform integer division, then it doesn't matter whether the string
has an odd or even number of characters

string = madam length = 5

string = walk length = 4

---------------- Algorithm
- break string into array of characters
- iterate through first half of string comparing it to second half
  - calculate string length / 2
  - iterate from 0 to length / 2 - 1
    - compare char at that idx to the char at -(idx + 1)
      - if any of these checks are false return false
- return true
=end

def palindrome?(string)
  half = string.length / 2 - 1

  for idx in 0..half do
    return false unless string[idx] == string[-(idx + 1)]
  end
  
  return true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true