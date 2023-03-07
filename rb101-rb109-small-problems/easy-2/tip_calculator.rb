print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
percent = gets.chomp.to_f

tip = (bill * percent / 100).round(2)
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"