=begin
---------------- Problem
Restate Problem: Given an name array and a details hash, print the name and 
  details to the screen.

Input: array with 2 or more elements and a hash with two keys

Output: "Hello, #{name}! Nice to have a #{:title :occupation} around."

Rules: 
  - array has two or more elements
  - hash has two keys
    - :title
    - :occupation

Assumptions: 
  - no empty arrays/hashes
---------------- Modelling / Examples
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm

=end

def greetings(name, details)
  "Hello, #{name.join(' ')}! Nice to have a #{details.values.join(' ')} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) ==
"Hello, John Q Doe! Nice to have a Master Plumber around."