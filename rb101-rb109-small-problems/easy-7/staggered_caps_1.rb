=begin
---------------- Problem
Restate Problem: Given a string of words, return a new string that alternates
  the case of the characters in the string.

Input: string

Output: string with alternating characters upcased

Rules: 
  - alternation scheme ignores non-alpha characters, except that the counter
    keeps counting
  - every other character is capitalized, starting with the first
  - all other characters are downcased

Assumptions: 

---------------- Modelling / Examples
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create new string
- iterate through old string using index to determine which to capitalize
    - if index is even - capitalize
    - if index is odd - downcase
    - push char to new string
- return new string
=end

def staggered_case(string)
  result = ''

  string.chars.each_with_index do |char, idx|
    result += if idx.even?
                char.upcase
              else
                char.downcase
              end
  end

  result
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
