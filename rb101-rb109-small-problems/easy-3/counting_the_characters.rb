=begin
---------------- Problem
Restate Problem:

Input: 
  - string of 1 or more words
Output: 
  - count of the characters in the string
Rules:
  - spaces don't count

---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- get string from user
- remove spaces and count
- output count to screen
=end

print "Please write a word or multiple words: "
string = gets.chomp

char_count = string.split.join.length

puts "There are #{char_count} characters in \"#{string}\"."