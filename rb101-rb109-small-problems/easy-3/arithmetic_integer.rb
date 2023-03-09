=begin
---------------- Problem
Restate Problem:

Input: 
  - two numbers
Output: 
  - addition, subtraction, product, quotient, remainder and power of the two
    numbers
Rules:
  - numbers must be positive
  - don't worry about validation

---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- get first number
- get second number
- output addition
- output subtraction
- output product
- output quotient
- output remainder
- output power
=end

puts "==> Enter the first number:"
first = gets.chomp.to_i

puts "==> Enter the second number:"
second = gets.chomp.to_i

puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first / second}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first ** second}"