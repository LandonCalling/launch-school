=begin
As we have seen previously we can use some built-in string methods to change
the case of a string.  A notably missing method is something provided in
Rails, but not in Ruby itself... 'titleize'.  This method in Ruby on Rails
creates a string that has each word capitalized as it would be in a title.
For example the string:

words = "the flintstones rock"

would be:

words = "The Flintstones Rock"

Write your own version of the Rails 'titleize' implementation.
=end

=begin
---------------- Problem
Restate Problem:

Input: string

Output: string capitalized as if a title

Rules: 

Assumptions: Must adhere to strict titling rules as stated below.
               - First and last word always capitalized no matter what
               - Succeeding words capitalized unless listed below
                   - the, a, an, in, of, and, but, or, for, nor, so, yet, if

---------------- Modelling / Examples
titleize('the flintstones rock') == 'The Flintstones Rock'
titleize('space in the time of nothing') == 'Space in the Time of Nothing'
titleize('as of yet') == 'As of Yet'
titleize('for us, but not for them') == 'For Us, but Not for Them'

---------------- Data Structures
array for holding capitalization exemptions

---------------- Scratchpad


---------------- Algorithm
- Separate string into array of words
- Iterate through array capitalizing words
  - Capitalize if its the first word
  - Capitalize the word unless it is included in the exemption list
  - Capitalize if its the last word
=end

words = "the flintstones rock"
CAPITAL_EXEMPTIONS = ['the', 'a', 'an', 
  'in', 'of', 'and', 
  'but', 'or', 'for', 
  'nor', 'so', 'yet',
  'if'
]

def titleize(string)
  array_length = string.split.size
  capitalized_array = []

  string.split.each_with_index do |word, idx|
    if (idx == 0) || (idx == (array_length - 1))
      capitalized_array.push(word.capitalize)
    elsif !(CAPITAL_EXEMPTIONS.include?(word))
      capitalized_array.push(word.capitalize)
    else
      capitalized_array.push(word)
    end
  end

  capitalized_array.join(' ')
end

puts titleize('the flintstones rock') == 'The Flintstones Rock'
puts titleize('space in the time of nothing') == 'Space in the Time of Nothing'
puts titleize('as of yet') == 'As of Yet'
puts titleize('for us, but not for them') == 'For Us, but Not for Them'