=begin
---------------- Problem
Restate Problem: 

Input: integer

Output: array of all integers between 1 and the given integer.

Rules: 

Assumptions: Given int will always be a valid int greater than 0

---------------- Modelling / Examples
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm

=end

def sequence(int)
  (1..int).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]