=begin
---------------- Problem
Restate Problem: Given a string of one or more words with duplicated letters
  remove any consecutive duplicated letters and return the new string.

Input: string with consecutive duplicated characters

Output: string with consecutive duplicated characters removed

Rules: consecutive duplicated characters should be collapsed into one
       only alphabetic characters and spaces present
       empty string should return an empty string

Assumptions: 

---------------- Modelling / Examples
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create a new empty string
- iterate through the given string
  - add the character to new string unless the previous character
    is the same as the current character
    - since an empty string will return nil for a call for the previous char
      there is no need to separately address the first char in the new string
- return new string
=end

def crunch(string)
  collapsed_string = ''

  string.chars.each do |char| 
    collapsed_string += char unless char == collapsed_string[-1]
  end

  collapsed_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''