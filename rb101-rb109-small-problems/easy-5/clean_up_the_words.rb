=begin
---------------- Problem
Restate Problem: Given a string of words and non-alphabetic characters, return
a string with all of the non-alphabetic characters removed replaced with spaces.

Input: string

Output: string
Rules: Must replace non-alphabetic characters with spaces.
       No consecutive spaces - if more than one non-alphabetic character is 
         present, replace with one space.

Assumptions: 

---------------- Modelling / Examples
cleanup("---what's my +*& line?") == ' what s my line '

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
-create new string
- iterate through given string
  - if char alpha
    - add to new string
    - otherwise check to see if previous char is a space
      - if so go to next iteration
      - if not add space
- return new string
=end

def cleanup(string)
  clean_string = ''
  alphabet_array = ('a'..'z').to_a
  
  string.chars.each_with_index do |char, idx|

    if alphabet_array.include?(char)
      clean_string += char
    elsif idx == 0 || clean_string[-1] != ' '
      clean_string += ' '
    end
  end

  clean_string
end

puts cleanup("---what's my +*& line?") == ' what s my line '