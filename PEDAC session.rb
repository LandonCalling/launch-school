# Intro to PEDAC!

=begin
Write a method that takes an array of consecutive letters as input and returns the missing letter.
=end

# p determine_missing_letter(['a','b','c','d','f']) == 'E' 
# p determine_missing_letter(['o','q','r','s']) == 'P'
# p determine_missing_letter(['H','J','K','L']) == 'i'
# p determine_missing_letter([]) == []

=begin
---------------- Problem
Given an array of letters in sequence, return the letter that is missing from the sequence.

Input: Array of letters

Output: The missing letter from the array (single character) or an empty array

Rules: 
- If the given array is empty, return an empty array
- The missing letter must be returned in the opposite case of the letters in the array

---------------- Modelling / Examples
['a','b','c','d','f'] 
['a','b','c','d','e' .....'z'] ==> reference/alpha array

['o','q'a,'r','s']
['a','b','c','d','e' .....'z'] ==> reference/alpha array

---------------- Data Structures
Create an alphabet array where each element is a letter of the alphabet
['a' ... 'z']

---------------- Scratchpad
GREAT IDEA!!
('a'..'z') => ['a', 'b', 'c'.....'z']

---------------- Algorithm
- Guard clause for the empty array
  - If the array is empty, then explicitly return an empty array
- Create comparison array
  - Create a range from 'a' to 'z' then convert into an array
- Find index for the first element of given array in comparison array and iterate through comparison array to find mismatch 
  - Find index for the first element of given array in comparison array and assign it to a variable
  - Slice comparison array OR loop through both arrays starting at first index
    - Iterate through each element in the given array
      - Compare the elements in the given array to the elements in the comparison array, but the first index in the comparison is the 'start' index
        - If they are the same, keep going and increment the start variable. If they are different, we have found the missing letter.
          - The missing letter is the element at the current index in the comparison array
            - Upcase or downcase that missing letter depending on the case of the given array, then return it
=end

def determine_missing_letter(arr)
  reference_alpha = ('a'..'z').to_a
  return [] if arr == []
  start = reference_alpha.index(arr[0])
  arr.each do |letter|
    if letter.downcase != reference_alpha[start]
      return reference_alpha[start]
    else
      start += 1
    end
  end
end

p determine_missing_letter(['a','b','c','d','f']) #== 'E' 
p determine_missing_letter(['o','q','r','s']) #== 'P'
p determine_missing_letter(['H','J','K','L']) #== 'i'
# p determine_missing_letter([]) == []