years = [10, 20, 30, 40]

puts 'How old are you?'
age = gets.chomp

for i in years do
  puts "In #{i} years you will be:"
  puts i + age.to_i
end