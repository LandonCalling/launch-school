=begin
---------------- Problem
Restate Problem: Given a string of characters return a hash that lists the
  count of the characters that are lowercase, uppercase, or neither

Input: string

Output: hash containing counts of lowercase, uppercase, and neither chars

Rules: 
  - can contain an empty string
  - empty string should still return the hash with zero values
  - hash should be in the format
    {lowercase: 0, uppercase: 0, neither: 0}

Assumptions:

---------------- Modelling / Examples
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

---------------- Data Structures
array of uppercase letters
array of lowercase letters

---------------- Scratchpad


---------------- Algorithm
- create hash for containing character counts
- set all hash values to 0
- convert string into array of chars and iterate through
  - if char is lowercase, add one to lowercase entry in hash
  - if char is uppercase, add one to uppercase entry in hash
  - if char is neither, add one to neither entry in hash
=end

LOWERCASE_CHARS = ('a'..'z').to_a
UPPERCASE_CHARS = ('A'..'Z').to_a

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      result[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      result[:lowercase] += 1
    else
      result[:neither] += 1
    end
  end

  result
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }