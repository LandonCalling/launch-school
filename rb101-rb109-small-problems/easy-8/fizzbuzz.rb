=begin
---------------- Problem
Restate Problem: Given two integers representing a starting and ending number,
  print out all numbers between the start and end inclusive, with the following
  exceptions.  If the number is divisible by 3 print Fizz, if the number is
  divisible by 5 print Buzz, and if the number is divisible by both 3 and 5
  print FizzBuzz

Input: two integers representing a starting and ending number

Output: All numbers printed to the screen following the rules below.

Rules: 
  - If number is divisible by 3 print Fizz
  - If number is divisible by 5 print Buzz
  - If the number is divisible by both print FizzBuzz
  - print all on one line separated by commas

Assumptions: 

---------------- Modelling / Examples
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create an array of numbers from start num to end num
- replace numbers divisible by 3, 5, and 15 with appropriate words
  - if number is divisible by 15 replace with FizzBuzz
  - if number is divisible by 3 replace with Fizz
  - if number is divisible by 5 replace with Buzz
  - othrwise do nothing
- combine array items together into a string and separate with ', '
- print combination to screen
=end

def fizzbuzz(start_num, end_num)
  num_arr = []

  start_num.upto(end_num) do |number|
    num_arr << if number % 15 == 0
                 'FizzBuzz'
               elsif number % 3 == 0
                 'Fizz'
               elsif number % 5 == 0
                 'Buzz'
               else
                 number
               end
  end

  puts num_arr.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz