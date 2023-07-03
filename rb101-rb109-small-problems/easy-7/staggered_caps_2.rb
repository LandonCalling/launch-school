=begin
---------------- Problem
Restate Problem: Given a string of words, return a new string with the
  characters in alternating capitalization.  Ignore non-alphabetic chars
  for the purposes of capitalization and for the counter.

Input: string

Output: string with alternating chars capitalized

Rules: 
  - First alpha char capitalized
  - ignore non-alpha chars
  - non-alpha chars don't increase the toggle counter

Assumptions: 

---------------- Modelling / Examples
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
-create result string
- set uppercase flag to true
- iterate through characters of string
  - if the character is an alphabetic character
    - check the uppercase flag.
    - if true add the uppercase version of the char to the result string
    - otherwise add the lowercase version of the char to the result string
    - change the uppercase flag to the opposite condition (true/false)
  - otherwise add character to result string
- return result
=end

ALPHA_CHARS = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(string, cap_first: true)
  result = ''
  need_upper = cap_first

  string.chars.each do |char|
    if ALPHA_CHARS.include?(char)
      result += if need_upper
                  char.upcase
                else
                  char.downcase
                end
      need_upper = !need_upper
    else
      result += char
    end
  end

  result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'