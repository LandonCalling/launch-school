answer_choices = ['y', 'n']

loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase

  if answer == 'y'
    puts "something" 
  elsif !(answer_choices.include?(answer))
    puts ">> Invalid input! Please enter y or n"
    next
  end
  
  break
end