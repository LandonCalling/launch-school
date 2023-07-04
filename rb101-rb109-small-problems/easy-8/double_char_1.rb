=begin
---------------- Problem
Restate Problem: Given a string of characters, return a new string that has
  every character doubled.

Input: string

Output: string with all chars from original string doubled

Rules:  empty string must return empty string

Assumptions: 

---------------- Modelling / Examples
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create new string
- iterate through given string
  - double each char and add to new string
- return new string
=end

def repeater(string)
  result = ''

  string.chars.each do |char|
    result += char * 2
  end

  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''