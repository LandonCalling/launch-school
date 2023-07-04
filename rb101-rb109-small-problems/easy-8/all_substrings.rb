=begin
---------------- Problem
Restate Problem: Given a string, return an array with all possible substrings

Input: string

Output: array of substrings

Rules: 
  - must be ordered by each subslice
  - each subslice substrings must be in size order

Assumptions: 

---------------- Modelling / Examples
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create results array
- loop a number of times equal to string's size
  - create subslice in the range of current to -1
  - call leading_substrings to find all substrings of that subslice
  - push return of leading substrings to results array
- flatten results array and return
=end

def leading_substrings(string)
  result = []

  string.size.times { |current| result << string[0..current] }

  result
end

def substrings(string)
  result = []
  
  string.size.times do |current|
    slice = string[current..-1]
    result << leading_substrings(slice)
  end

  result.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]