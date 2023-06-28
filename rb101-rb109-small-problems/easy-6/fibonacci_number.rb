=begin
---------------- Problem
Restate Problem: Given an integer that represents the length of a number
  in the fibonacci series, find the index of the first number in the series
  that has that many digits.

Input: integer representing the length of a number in the fibonacci series

Output: integer representing the index of the first number in the series
  that has the given length

Rules: 
  - Fibonacci series is x(a) = x(a-1) + x(a-2)
  - series begins with 1 and 1
    - i.e x(1) = 1, x(2) = 1, x(3) = 2
  - index of first number in fibonacci series is 1

Assumptions: given integer is always >= 2

---------------- Modelling / Examples
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- set a counter to 2
- set first fibonacci number to 1
- set second fibonacci number to 1
- set intermediate fibonacci number to 0
- while the number of digits in the intermediate fibonacci number is less than
  given integer
  - add first and second fib numbers and store in the intermediate fibonacci
  - move second fibonacci number to first slot
  - move intermediate fibonacci number to second slot
  - add one to the counter
- return counter
=end

def find_fibonacci_index_by_length(length_of_number)
  index_of_current_num = 2
  fib_num_1 = 1
  fib_num_2 = 1
  intermediate_fib_num = 0

  while intermediate_fib_num.digits.length < length_of_number
    intermediate_fib_num = fib_num_1 + fib_num_2
    fib_num_1 = fib_num_2
    fib_num_2 = intermediate_fib_num
    index_of_current_num += 1
  end

  index_of_current_num
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847