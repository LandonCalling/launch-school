loop do
  puts "Please enter a number:"
  number = gets.chomp
  puts "The number you entered was #{number}"
  puts "Press any key to try again.  Enter 'STOP' to quit."
  answer = gets.chomp.upcase
  if answer == "STOP"
    break
  end
end
