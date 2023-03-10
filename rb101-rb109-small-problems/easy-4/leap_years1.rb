=begin
---------------- Problem
Restate Problem:

Input: 
  - a number representing the year
Output: 
  - a boolean representing whether the year was a leap year or not
Rules: 
  - leap year is:
    - every year divisible by 4
    - except years divisible 100
      - unless it is divisible by 400
  - assume this rule is good for any year greater than year 0
---------------- Modelling / Examples


---------------- Data Structures

---------------- Scratchpad

---------------- Algorithm
- is the year divisible by 4?
  - if yes: 
    - is it divisible by 100?
      - if yes: 
        - is it divisible by 400?
          - if yes:
            - true
          - if no:
            - false
      - if no:
        - true
  - if no:
    - false
=end

def leap_year?(year)
  ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true