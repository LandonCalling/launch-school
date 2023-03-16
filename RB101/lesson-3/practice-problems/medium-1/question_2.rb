# puts "the value of 40 + 2 is " + (40 + 2)

# This will cause an error because you can't add a number to a string.
# To fix this do one of the following

puts "the value of 40 + 2 is #{40 + 2}"

# or

puts "the value of 40 + 2 is " + (40 + 2).to_s