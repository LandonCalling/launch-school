=begin
---------------- Problem
Restate Problem: Given an array of numbers sort the numbers alphabetically
  by their english word equivalent

Input: array of integers

Output: array of integers

Rules: Integers will be between 0 and 19 inclusive

Assumptions: 

---------------- Modelling / Examples
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

---------------- Data Structures
array that contains english word equivalent that corresponds to the number index

---------------- Scratchpad


---------------- Algorithm
- convert each number in the array to their english equivalent using array
  of words
  - iterate through array
    - convert number using array
- sort alphabetically
- convert each word back to its number equivalent using array of words
  - iterate through given array
    - convert word back to number
=end
ENGLISH_NUMBERS = %w(zero one two three four five six seven eight nine ten
                     eleven twelve thirteen fourteen fifteen sixteen seventeen 
                     eighteen nineteen)
=begin

def alphabetic_number_sort(number_array)
  words = number_array.map { |num| ENGLISH_NUMBERS[num] }
  words.sort!
  words.map { |word| ENGLISH_NUMBERS.find_index(word) }
end

=end

def alphabetic_number_sort(number_array)
  number_array.sort do |num1, num2|
    ENGLISH_NUMBERS[num1] <=> ENGLISH_NUMBERS[num2]
  end
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]