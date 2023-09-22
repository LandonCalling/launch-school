=begin
---------------- Problem
Restate Problem: Given an integer as an argument, find the max rotation.

Input: integer

Output: integer

Rules: 
  - do not have to handle multiple zeros
  - should use rotate_rightmost_digits method from previous exercise
  - outputs that have leading zeros should be dropped (i.e. 015 becomes 15)
  - inputs are all positive
  - 
Assumptions: 

---------------- Modelling / Examples
735291
1.  735291 => 352917 use all digits in rotation
2. 3 52917 => 329175 hold index 0 rotate index 1 to -1
3. 32 9175 => 321759 hold index 0-1 rotate index 2 to -1
4. 321 759 => 321597 hold index 0-2 rotate index 3 to -1
5. 3215 97 => 321579 hold index 0-3 rotate index 4 to -1
stop after size - 1 iterations iterating from index 0 to index 4

1.  735291 => 352917 rotate 6th digit
2. 3 52917 => 329175 rotate 5th digit
3. 32 9175 => 321759 rotate 4th digit
4. 321 759 => 321597 rotate 3rd digit
5. 3215 97 => 321579 rotate 2nd digit
stop after size - 1 iterations, iterating from 

1.  13005 => 30051
2. 3 0051 => 30510
3. 30 510 => 30105
4. 301 05 => 30150

---------------- Data Structures
string verison of integer to manipulate digits

---------------- Scratchpad
 735291 => [0...-6] + [-6..-1]
3 52917 => [0...-5] + [-5..-1]
32 9175 => [0...-4] + [-4..-1]

---------------- Algorithm
- convert to string
- iterate a number of times equal to the length of the string - 1:
  - first half and second half as defined in scratchpad
  - split integer ito first and second half
  - rotate_rightmost digit of second half
  - combine first half and rotated second half
- return result as integer
=end

def rotate_array(array)
  copy = array.dup
  copy << copy.shift
end

def rotate_rightmost_digits(string, place)
  digits_array = string.chars.map(&:to_i)
  rotated_array = digits_array[0...-place] +
                  rotate_array(digits_array[-place..-1])
  rotated_array.join
end

def max_rotation(int)
  number = int.to_s
  size = number.size

  size.downto(2) do |index|
    first_half = number[0...-index]
    second_half = number[-index..-1]

    number = first_half + rotate_rightmost_digits(second_half, index)
  end

  number.to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
puts max_rotation(13005) == 30150