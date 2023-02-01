answer = nil

loop do
  puts ">> How many output lines do you want?"
  puts ">> Please enter a number greater than or equal to 3:"
  answer = gets.chomp.to_i
  
  break unless answer < 3

  puts "That's not enough lines."
end

answer.times { puts "Launch School is the best!" }