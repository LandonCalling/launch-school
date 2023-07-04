=begin
---------------- Problem
Restate Problem:  Given a string, return a string where any word longer than 5
  characters has its characters reversed.

Input: string

Output: string with words reversed character by character

Rules: 
  - each string will consist of only letters and spaces
  - spaces should be included only when more than one word is present
  - only words longer than 5 characters are reversed

Assumptions: 

---------------- Modelling / Examples
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create result string
- split given string into array of words
- iterate through the array
  - if word length is greater than 4 reverse the characters of the word
  - otherwise leave alone
  - push the word/reversed word to the result string
- return result string
=end

def reverse_words(string)
  result = string.split.map do |word|
    if word.length > 4
      word.chars.reverse.join
    else
      word
    end
  end

  result.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS