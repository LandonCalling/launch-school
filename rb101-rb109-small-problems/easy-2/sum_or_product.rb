puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp



if operation == 's'
  total = 0
  number.times { |i| total += (i + 1) }
  puts "The sum of the integers between 1 and #{number} is #{total}."
else
  total = 1
  number.times { |i| total *= (i + 1) }
  puts "The product of the integers between 1 and #{number} is #{total}."
end