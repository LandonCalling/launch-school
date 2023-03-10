=begin
---------------- Problem
Restate Problem:

Input:  a number

Output: the sum of every number between 1 and that number that is a multiple
        of 3 or 5

Rules: assume input is integer greater than 1

---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm

=end
def multisum(number)
  sum = 0

  for n in 1..numbers
    sum += n if n % 3 == 0|| n % 5 == 0
  end
  
  sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168