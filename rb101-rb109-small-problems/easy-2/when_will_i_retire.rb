require 'date' 

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

current_year = DateTime.now.year
years_left = retire_age - age
retire_year = current_year + years_left

puts "It's #{current_year}.  You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"