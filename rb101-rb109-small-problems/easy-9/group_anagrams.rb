=begin
---------------- Problem
Restate Problem: Given an array of words, print out to the screen groups of
  words that are anagrams (have the same exact letters)

Input: array

Output: print word groups to the screen

Rules: 
  - should look like the following for output
    - ['demo', 'dome', 'mode']
    - ['neon', 'none']

Assumptions: 

---------------- Modelling / Examples
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

should produce

['demo', 'dome', 'mode']
['neon', 'none']
etc.

---------------- Data Structures


---------------- Scratchpad
if the chars are the same, it is an anagram
therefore word1.chars.sort == word2.chars.sort

---------------- Algorithm
- create results array
- iterate through word array mapping each word to its string sorted by char
- get unique values from mapped array
- iterate through mapped array
  - iterate through given array
    - create intermediate array for storing matching words
    - if word sorted by characters is the same as word from mapped array push
  - push intermediate array to results array
- iterate through results array and print
=end

def anagrams(word_arr)
  results = []
  unique_anagrams = word_arr.map { |word| word.chars.sort.join }.uniq

  unique_anagrams.each do |anagram|
    results << word_arr.select { |word| word.chars.sort == anagram.chars }
  end

  results.each { |anagram_list| p anagram_list }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams(words)