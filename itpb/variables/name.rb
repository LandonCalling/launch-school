puts 'Please type in your first name:'
first_name = gets.chomp
puts 'Now enter your last name:'
last_name = gets.chomp
puts 'Hi ' + first_name + ' ' + last_name + '! I hope you\'re doing well!'

10.times { puts first_name + ' ' + last_name }