=begin
---------------- Problem
Restate Problem: Given an array, split the array into two different arrays
  each containing half of the elements of the given array.

Input: Array

Output: An array containing two nested arrays that each contain half of the
  elements of the given array

Rules:
  - If the array has an odd number of elements, the middle element should go
    in the first array
  - return both arrays nested into a single array
  - elements return should be in the same order they were in the given array
  - an empty array should return two nested empty array
  - an array with one element should return two nested arrays, one of which
    contains the number, and the other being blank


Assumptions: 

---------------- Modelling / Examples
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

---------------- Data Structures


---------------- Scratchpad
ex: [1, 5, 2, 4, 3]
  5 = array length
  2 = array length divided by 2
  2 = index of middle element
  0..1, 2, 3..4

ex: array length = 7
  3 = array length divided by 2
  3 = index of middle element
  0..2, 3, 4..6

ex: array length = 4
  2 = array length divided by 2
  no middle element
  0..1, 2..3

ex: array length = 6
  3 array length divided by 2
  no middle element
  0..2, 3..5

  odd index range
  0..(array length / 2 - 1) - first half
  (array length / 2) - middle element
  (array length / 2 + 1)..(array length - 1) - last half

  even index range
  0..(array length / 2 - 1) - first half
  (array length / 2)..(array length - 1) - last half

  use odd ranges
    - if array length is even add middle element to beginning of last half
    - if array length is odd add middle element to end of first half

---------------- Algorithm
- find array length
- slice array into two/three parts
- first half index range = 0..(array length / 2 - 1)
- middle element index = array length / 2
- last half index rahge = (array length / 2 + 1)..(array length - 1)
- if array length is even add middle element to beginning of last half
- otherwise add middle element to end of first half
- return array of [first half, last half]
=end

def halvsies(array)
  length = array.length
  half = length / 2

  return [[], []] if length == 0
  return [array, []] if length == 1

  first_half = array[0..(half - 1)]
  middle = array[half]
  last_half = array[(half + 1)..(length - 1)]

  if length.odd?
    first_half.push(middle)
  else
    last_half.unshift(middle)
  end

  [first_half, last_half]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]