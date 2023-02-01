USER_NAME = "landon"
PASSWORD = "SpellIng"

loop do
  puts "Please enter user name:"
  answer_user = gets.chomp
  puts "Please enter your password:"
  answer_pass = gets.chomp
  break if (answer_user == USER_NAME && answer_pass == PASSWORD)
  puts "Authorization failed!"
end

puts "Welcome!"