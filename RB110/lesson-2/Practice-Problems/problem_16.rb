=begin
---------------- Problem
Restate Problem:

Input: None

Output: UUID

Rules: 
  - UUID is a hexadecimal string of the format 8-4-4-4-12, where the nums
    represent the num of characters in that section.
  - hex characters are lowercase
Assumptions: 

---------------- Modelling / Examples


---------------- Data Structures
array of hex digits
array containing nums for each section

---------------- Scratchpad


---------------- Algorithm
- create an empty array for holding the UUID sections
- iterate through the section lengths array
  - create new string
  - the number of times equal to current section element
    - select a random number between 0 and 15
    - add char from hex digit array at index of random number to new string
  - push new string to the array for UUID sections
- join UUID section array with '-'
=end

HEX_DIGITS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f).freeze
SECTION_LENGTHS = [8, 4, 4, 4, 12].freeze

def create_uuid()
  uuid_sections = []

  SECTION_LENGTHS.each do |length|
    section_string = ''

    length.times do |_|
      index = rand(0..15)
      section_string += HEX_DIGITS[index]
    end

    uuid_sections << section_string
  end

  uuid_sections.join('-')
end

puts create_uuid()
