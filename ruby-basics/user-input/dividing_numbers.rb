numerator = nil
denominator = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  
  break if valid_number?(numerator)
  
  puts ">> Invalid input. Only integers are allowed."
  puts ">> Please try again."
end

loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp

  if !(valid_number?(denominator))
    puts ">> Invalid input. Only integers are allowed."
    puts ">> Please try again."
  elsif denominator.to_i == 0
    puts ">> Invalid input.  A denominator of 0 is not allowed."
    puts ">> Please try again."
  else
    break
  end
end

answer = numerator.to_i / denominator.to_i
puts "The result of dividing #{numerator} by #{denominator} is #{answer}"

