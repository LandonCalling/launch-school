=begin
---------------- Problem
Restate Problem: 

Input: 

Output: 

Rules: 

Assumptions: 

---------------- Modelling / Examples
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

---------------- Data Structures


---------------- Scratchpad
'm a d a m' length = 5, length / 2 = 2
 0 1 2-2-1  

'm a d d a m' length = 6, length / 2 = 3
 0 1 2-3-2-1
---------------- Algorithm
- create results array
- find all substrings
- iterate through substring array and find palindromes
  - find length of substring
  - set palindrome_flag to true
  - loop a number of times equal to length / 2
    - compare element to substring at current iteration to element of substring
      at -(current + 1)
      - if not the same set palindrome_flag to false
  - if palindrome_flag is true push substring to results array
- return results array
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

def palindromes(string)
  result = []
  substring_arr = substrings(string)

  substring_arr.each do |substring|
    length = substring.size

    next if length == 1

    palindrome_flag = true

    (length / 2).times do |current|
      palindrome_flag = false unless substring[current] == substring[-(current + 1)]
    end

    result << substring if palindrome_flag
  end

  result
end
 
puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]