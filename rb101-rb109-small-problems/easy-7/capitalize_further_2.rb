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
    - split word into array of chars and iterate through
      - if char is at index 0 upcase
      - otherwise downcase
  - push to new array
- return array joined by spaces
=end

def word_cap(string)
  result = string.split.map do |word|
    counter = 0

    cap_word = word.chars.map do |char|
      if counter == 0
        counter += 1
        char.upcase
      else
        char.downcase
      end
    end

    cap_word.join
  end

  result.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'