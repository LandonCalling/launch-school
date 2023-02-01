def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!" 

=begin
  The gets method takes user input and returns a string.  Since we didn't
  convert the string into an integer, when it is passed to the multiply method
  we are performing string multiplication, which just returns a new string
  that is the old string copied 5 times.
  We fix this by converting the number variable to an integer before we use it. 
=end