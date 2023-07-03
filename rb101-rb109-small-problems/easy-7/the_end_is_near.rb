=begin
---------------- Problem
Restate Problem: Given a string of at least two words, return the second
  to last word

Input: string

Output: string representing the second to last word in the sequence

Rules: words are any sequence of non-blank characters

Assumptions: input string will have at least two words

---------------- Modelling / Examples
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- split string into array of words
- return word in the second to last spot
=end

def penultimate(string)
  string.split[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'