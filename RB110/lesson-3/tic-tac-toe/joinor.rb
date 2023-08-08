=begin
---------------- Problem
Restate Problem: Write a method that takes an array of integers, and returns
  a string of those integers separated by commas, with a ', or' between the
  last two integers.

Input: array

Output: string

Rules: join must include the word 'or' after the last comma

Assumptions: 

---------------- Modelling / Examples
=> Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9

joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- if array length is two return the two elements joined by 'keyword'
- slice array into ranges (0..-2) and (-1)
=end

def joinor(choice_list, seperator = ',', keyword = 'or')
  case choice_list.length
  when 1..2 then choice_list.join(" #{keyword} ")
  else           choice_list[0..-2].join("#{seperator} ") +
    "#{seperator} #{keyword} #{choice_list[-1]}"
  end
end

puts joinor([1, 2])                   # => "1 or 2"
puts joinor([1, 2, 3])                # => "1, 2, or 3"
puts joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
