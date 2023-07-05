=begin
---------------- Problem
Restate Problem: Given three integers, determine the average and return the
  letter grade associated with it

Input: three integers between 0 and 100

Output: letter grade corresponding to the average of the three ints

Rules: 
  - 90 - 100 = A
  - 80 -  89 = B
  - 70 -  79 = C
  - 60 -  69 = D
  -  0 -  59 = F
  - no negative values
  - no values above 100
Assumptions: 

---------------- Modelling / Examples
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- add three values and divide by 3
- determine corresponding letter grade
- return letter grade
=end

def get_grade(*grades)
  average = grades.sum / grades.length.to_f

  case average
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"