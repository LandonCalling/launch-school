=begin
---------------- Problem
Restate Problem:

Input: 
  - number representing the year
Output: 
  - string representing the century as an ordinal
Rules: 
  - century begins in years  that end with 01 so 1901 - 2000

---------------- Modelling / Examples


---------------- Data Structures


---------------- Scratchpad


---------------- Algorithm
- subtract one year, divide by 100, then add 1 to get century
- if century ends in 11, 12, or 13, add th
  - otherwise, check last digit
    - if 1 add st
    - if 2 add nd
    - if 3 add rd
    - otherwise add th
=end

require 'pry'

def century(year)
  cent = (year - 1) / 100 + 1

  if [11, 12, 13].include?(cent % 100)
    cent.to_s + 'th'
  else
    cent = cent.to_s
    
    case cent[-1]
    when '1' then cent + 'st'
    when '2' then cent + 'nd'
    when '3' then cent + 'rd'
    else          cent + 'th'
    end
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'