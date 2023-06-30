=begin
---------------- Problem
Restate Problem: Given a has containing several fruits and vegetables as keys,
  return an array that contains the colors of the fruit capitalized and the
  size of the vegetabpes upcased.

Input: hash

Output: array containing fruit colors and vegetable sizes

Rules: 
  - fruit colors need to be capitalized
  - vegetable sizes need to be upcased.

Assumptions: 

---------------- Modelling / Examples
This hash:
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

Should return this array:a
[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm

=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = hsh.values.each_with_object([]) do |details, array|
  if details[:type] == 'fruit'
    array << details[:colors].map { |color| color.capitalize }
  elsif details[:type] == 'vegetable'
    array << details[:size].upcase
  end
end

p arr
p hsh
