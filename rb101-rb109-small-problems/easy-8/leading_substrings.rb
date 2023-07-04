=begin
---------------- Problem
Restate Problem: Given a string, return an array that contains all substrings
  of that string that start at the beginning of the string

Input: string

Output: array of substrings

Rules: 

Assumptions: 

---------------- Modelling / Examples
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create result array
- loop a number of times equal to string's size
  - get slice of string equal to the range of 0 to current loop operation number
  - push slice to result array
-return result
=end

def leading_substrings(string)
  result = []

  string.size.times { |current| result << string[0..current] }

  result
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']