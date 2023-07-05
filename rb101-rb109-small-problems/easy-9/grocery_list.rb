=begin
---------------- Problem
Restate Problem:  Given an array containing grocery items and the amounts needed
  return an array that lists  the correct number of each item.

Input: array

Output: array

Rules: 

Assumptions: assume no negative or zero values

---------------- Modelling / Examples
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- create results array
- iterate through given array
  - loop a number of times equal to the count of the given sub-array
    - push the given item to the results array
-return results
=end

def buy_fruit(grocery_list)
  result = []

  grocery_list.each do |item, count|
    count.times { |_| result << item }
  end

  result
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]