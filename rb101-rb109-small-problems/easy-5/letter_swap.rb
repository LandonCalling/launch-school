=begin
---------------- Problem
Restate Problem: Take a string of words and swap the first and last char of
  each word and return the resulting string.

Input: string of words

Output: string of words with first and last char of each word swapped

Rules: 

Assumptions: Only letters and spaces present
             Always at least one word
             Each word has at least one char

---------------- Modelling / Examples
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

---------------- Data Structures


---------------- Scratchpad
a = "it"

last = a[-1]

middle = a[1...-1]

first = a[0]

---------------- Algorithm
- split string into an array of words
- iterate over array and swap first and last char of each word
  - if word length is one char break and move to next word
  - use String#slice to rearrange word
    - last + middle + first
- join array together with spaces to form new string
- return new string
=end

def swap(string)
  swapped_array = string.split.map do |word|
                    if word.length == 1
                      word
                    else
                      word[-1] + word[1...-1] + word[0]
                    end
                  end

  swapped_array.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
