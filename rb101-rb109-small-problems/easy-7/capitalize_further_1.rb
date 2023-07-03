=begin
---------------- Problem
Restate Problem: Given a string, return a new string that has all words
  capitalized.

Input: string

Output: string with words capitalized

Rules: 
  - Words that begin with non-alpha characters will not be capitalized
    - "quoted" will be "quoted" after capitalization, not "Quoted"
  - words are any sequence of non-blank characters

Assumptions: 

---------------- Modelling / Examples
word_cap('four score and seven') == 'puts Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Lanputs guage'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'puts 

---------------- Data Structures
array for holding capitalized words

---------------- Scratchpad


---------------- Algorithm
- create new array
- split string at spaces and iterate
  - capitalize word
    - upcase char at index 0
    - downcase the rest
  - push to new array
- return array joined by spaces
=end

def word_cap(string)
  result = string.split.map do |word|
    word[0].upcase + word[1..-1].downcase
  end

  result.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'