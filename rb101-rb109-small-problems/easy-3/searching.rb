=begin
---------------- Problem
Restate Problem:

Input: 
  - six integers
Output: 
  - print to the screen whether the sixth number is present in the other five
Rules: 
aaaaa
---------------- Modelling / Examples


---------------- Data Structures
array for storing first 5 numbers
array for storing ordinals for printing during input

---------------- Scratchpad


---------------- Algorithm
- input 5 numbers into array
- store sixth in variable
- does the array include integer number 6
=end

ORDINALS = %w(1st 2nd 3rd 4th 5th)
numbers = []

5.times do |idx|
  puts "Enter the #{ORDINALS[idx]} number:"
  number = gets.chomp.to_i
  numbers.push(number)
end

puts "Enter the last number:"
search_num = gets.chomp.to_i

if numbers.include?(search_num)
  puts "The number #{search_num} appears in #{numbers}."
else
  puts "The number #{search_num} does not appear in #{numbers}."
end
