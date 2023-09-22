=begin
---------------- Problem
Restate Problem: Given an number 'n' representing the number of lights in a bank
  of lights, use the following light switching lgorithm to determine which
  lights remain on at the end.

  - lights are numbered 1 to n
  - all lights start off in the off position
  - n rounds are performed
  - round x: all lights in range 1-n divisible by x are switched state (on/off)

Input: an integer representing the number of lights

Output: an array of integers representing the lights still on at the end of the
  sequence

Rules:
  - lights are numbered 1 to n
  - all lights start off in the off position
  - n rounds are performed
  - round x: all lights in range 1-n divisible by x are switched state (on/off)
  - only light numbers with an odd number of factors will end up on at the end
    - only light numbers that are squares will end up with their lights on
      at the end
Assumptions:

---------------- Modelling / Examples
thousand_lights(5) == [1, 4]
thousand_lights(10) == [1, 4, 9]
thousand_lights(25) == [1, 4, 9, 16, 25]

---------------- Data Structures
range of integers to iterate over


---------------- Scratchpad
n = 5
1  2  3  4  5
I  I  I  I  I round 1
   O     O    round 2
      0       round 3
         I    round 4
            O round 5
I  O  O  I  O end state
1  2  2  3  2 factors

n = 10
1  2  3  4  5  6  7  8  9  10
I  I  I  I  I  I  I  I  I  I  round 1
   O     O     O     O     O  round 2
      0        I        O     round 3
         I           I        round 4
            O              I  round 5
               0              round 6
                  O           round 7
                     O        round 8
                        I     round 9
                           O  round 10
1  O  O  I  O  O  O  O  I  O  end state
1  2  2  3  2  4  2  4  3  4  factors

---------------- Algorithm
- create results array
- iterate through the range of 1 to n
  - if number is a square add to results array
    - iterate through range of 1 to current light
      - if integer of current iteration squared equals equals the number of
        the current light then add number of current light to results array
      - otherwise if integer of current iteration squared is greater than number
        of the current light, break
- return results array
=end

def thousand_lights(num_lights)
  results = []
  
  1.upto(num_lights) do |current_light|
    1.upto(current_light) do |index|
      square = index ** 2
      results << current_light if square == current_light
      break if square > current_light
    end
  end

  results
end

puts thousand_lights(5) == [1, 4]
puts thousand_lights(10) == [1, 4, 9]
puts thousand_lights(25) == [1, 4, 9, 16, 25]
puts thousand_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]