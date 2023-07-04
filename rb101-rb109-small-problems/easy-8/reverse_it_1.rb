=begin
---------------- Problem
Restate Problem: Given a string, return a new string with the words in reverse
  order.

Input: string

Output: string with words in reverse order

Rules: 
  - empty string should return an empty string
  - string with any number of spaces only should return an empty string
  - case remains the same

Assumptions: 

---------------- Modelling / Examples
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- split string into array of words
- reverse the order
- join back together with spaces
- return joined array
=end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''