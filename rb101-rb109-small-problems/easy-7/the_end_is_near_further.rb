=begin
---------------- Problem
Restate Problem: Given a string of words, return the middle word

Input: string

Output: string representing the middle word in the sequence

Rules: words are any sequence of non-blank characters

Assumptions: 

---------------- Modelling / Examples
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

---------------- Data Structures


---------------- Edge Cases
- even number of words
- only one word
- empty string
- non-string argument

---------------- Scratchpad
arr length = 5 => middle word at index 2
5 / 2 = 2

arr length = 6 => middle words at indexes 2, 3
6 / 2 = 3

arr length = 1 => middle word at index 0
1 / 2 = 0

---------------- Algorithm
- check class of argument to verify string
- split string into array of words
- if array is empty return empty string
- find middle word
  - divide length by 2
- return middle word if # words is odd
- return two middle words if # words is even 
=end

def penultimate(string)
  return nil unless string.class == String
  
  word_arr = string.split
  length = word_arr.length

  return '' if length == 0

  middle_word = length / 2
  length.odd? ? word_arr[middle_word] : word_arr[middle_word - 1, 2].join(' ')
end

puts penultimate('last word') == 'last word'
puts penultimate('Launch School is great!') == 'School is'
puts penultimate(123) == nil
puts penultimate('') == ''
puts penultimate('   ') == ''
puts penultimate('string') == 'string'
puts penultimate('The best part is this') == 'part'