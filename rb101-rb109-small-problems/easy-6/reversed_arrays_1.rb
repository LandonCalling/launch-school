=begin
---------------- Problem
Restate Problem: given an array reverse the elements in the array in place
  (as in destructively), and return the same array

Input: array

Output: array with the elements reversed

Rules: 
  - cannotuse Array#reverse or Array#reverse!
  - an empty array must return an empty array

Assumptions: 

---------------- Modelling / Examples
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

---------------- Data Structures


---------------- Scratchpad
array length = 4
array length / 2 = 2
counter 0 => temp = 1, array[0] = 4, array[-1] = 1
counter 1 => temp = 2, array[1] = 3, array[-2] = 2
counter 2

array length = 5
array length / 2 = 2
counter 0 => temp = a, array[0] = c, array[-1] = a
counter 1 =3 temp = b, array[1] = d, array[-2] = b
counter 2

---------------- Algorithm
- set counter to 0
- until counter is greater than length divided by 2
  - set temp variable equal to element of array at index counter
  - set element of array at index counter equal to element of array at index
    -1 * counter - 1
  - set element of array ta index (-1 * counter - 1) equal to temp variable
  - increment counter
- return given array
=end

def reverse!(array)
  counter = 0

  until counter >= array.length / 2
    temp = array[counter]
    array[counter] = array[-1 * counter - 1]
    array[-1 * counter - 1] = temp
    counter += 1
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true