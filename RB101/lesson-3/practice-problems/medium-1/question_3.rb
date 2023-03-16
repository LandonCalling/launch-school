# Alan wrote the following method, which was intended to show all the factors
# of the input number:

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

=begin
Alyssa noticed that this will fail if the input is 0, or a negative number,
and asked Alan to change the loop.  How can you make this work without using
the begin / end until construct?  Note that we're not looking to find the
factors for 0 or negative numbers, but we just want to handle gracefully
instead of raising an exception or goin into an infinite loop.
=end

print factors(0)
print factors(-10)
print factors(10)

=begin
Bonus 1: The number % divisor == 0 code means that the result of
number / divisor will only be put in the array if number is evenly divisible
by divisor.  In other words if divisor is a factor of number.

Bonus 2: Line 8 is the return statement.  It makes sure that the factors array
is returned.
=end