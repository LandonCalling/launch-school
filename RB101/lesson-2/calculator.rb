# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts "Welcome to Calculator!"

puts "What's the first number?"
num1 = gets.chomp

puts "What's the second number?"
num2 = gets.chomp

puts "What operation would you like to perform?"
puts "1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp
 
num1 = num1.to_i
num2 = num2.to_i
operator = operator.to_i

result = case operator
         when 1 then num1 + num2
         when 2 then num1 - num2
         when 3 then num1 * num2
         when 4 then num1.to_f / num2
         end

puts "The result is #{result}"