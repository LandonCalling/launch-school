=begin
---------------- Problem
Restate Problem: given an array of values, print out a count of each unique
  value in the array

Input: array

Output: counts of each unique value printed to the screen

Rules: words are case sensitive - thus 'suv' != 'SUV'

Assumptions: no empty arrays

---------------- Modelling / Examples


---------------- Data Structures
hash for storing unique vehicle types and counts

---------------- Scratchpad


---------------- Algorithm
- select unique words and initialize a hash with those values
- iterate through array
  - add one to hash key for that word
- print keys and values to screen
  - in the format key => value
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def initialize_hash(unique_words)
  result = {}
  unique_words.each { |word| result[word] = 0 }
  result
end

def count_occurrences(array)
  count_hash = initialize_hash(array.uniq)
  array.each { |word| count_hash[word] += 1 }
  count_hash.each { |vehicle, count| puts "#{vehicle} => #{count}" }
end

count_occurrences(vehicles)