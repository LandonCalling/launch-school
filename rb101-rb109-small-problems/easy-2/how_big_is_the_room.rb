METERS_TO_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_metric = length * width
area_british = area_metric * METERS_TO_FEET
area_british = format("%.2f", area_british)

puts "The area of the room is #{area_metric} square meters " + 
     "(#{area_british} square feet)"