=begin
---------------- Problem
Restate Problem: Given a string of words, create and return a hash
  that details how many words of each word length are present.

Input: string

Output: hash of word lengths and count

Rules: Words consist of any string of characters that do not include a space.
         which means that punctuation counts as part of word.
       Keys are different word lengths
       Values are count of words that are that long

Assumptions: 

---------------- Modelling / Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create an empty hash for storing word lengths
- separate string into an array of words
- iterate through the array
  - strip punctuation from word (separate function)
  - Find the length of the word
  - if key(length) already exists in hash then add one to that key's value
  - otherwise set up a new key/value pair where the key is the word's length
    and the value is 1.
- return hash

- strip punctuation from word
  - create an empty array for stripped characters
  - break word into array of chars
  - iterate through array
    - if current char is included in range a to z, add to stripped array
  - join stripped array into word and return
=end

def word_sizes(string)
  string.split.each_with_object({}) do |word, hash|
    stripped_word = strip_word(word)
    word_length = stripped_word.size

    if hash.keys.include?(word_length)
      hash[word_length] += 1
    else
      hash[word_length] = 1
    end
  end
end

def strip_word(string)
  stripped_array = []
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a

  string.chars.each { |char| stripped_array << char if alphabet.include?(char)}

  stripped_array.join
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}