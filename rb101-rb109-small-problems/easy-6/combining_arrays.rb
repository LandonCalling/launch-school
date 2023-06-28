=begin
---------------- Problem
Restate Problem: Given two arrays, combine the two arrays into one, removing
  duplicates

Input: Two arrays

Output: Array containing all non duplicate elements of two different arrays

Rules: No duplication even if there are duplicates in the original arrays

Assumptions: 

---------------- Modelling / Examples
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- merge two given arrays into one new array
- remove duplicates
- return new array
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]