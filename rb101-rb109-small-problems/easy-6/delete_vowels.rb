=begin
---------------- Problem
Restate Problem: given an array of string, remove all vowels from each
  string and return the new array

Input: array of strings

Output: array of strings with the vowels removed

Rules:
  - if all letters are removed from a string an empty string should be
    put inside the new array
  - capitalization matters, both lowercase and uppercase vowels should be
    deleted.
  - case should remain the same.  uppercase strings should remain uppercase.
    lower case strings should remain lowercase.
  - only letters present in the strings

Assumptions: 

---------------- Modelling / Examples
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

---------------- Data Structures
string to store uppercase and lowercase vowels for removal

---------------- Scratchpad


---------------- Algorithm
- iterate through given array
  - for each string delete the vowels and return the new string
=end

VOWELS = "aeiouAEIOU"

def remove_vowels(arr_of_words)
  arr_of_words.map { |word| word.delete(VOWELS) }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
