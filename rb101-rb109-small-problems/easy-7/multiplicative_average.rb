=begin
---------------- Problem
Restate Problem: Given an array of integers, find the multiplicative average
  and output to the screen

Input: array of integers

Output: float with 3 decimal places

Rules:
  - multiplicative average is all numbers multiplied together and then
    divided by the number of integers present
  - non-empty array
  - print result to screen

Assumptions:

---------------- Modelling / Examples
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

---------------- Data Structures

---------------- Scratchpad

---------------- Algorithm
- iterate through array multiplying elements togther
- divide by the length of the array
- format for 3 decimal places
- print to screen
=end

def show_multiplicative_average(num_arr)
  average = num_arr.inject(:*).to_f / num_arr.length
  average = format('%.3f', average)

  puts "The result is #{average}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
