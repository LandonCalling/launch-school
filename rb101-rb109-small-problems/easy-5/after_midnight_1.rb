=begin
---------------- Problem
Restate Problem: Given a positive or negative integer representing the amount
  of time after or before midnight, determine the time.  Positive integer is
  after midnight, negative integer is before midnight

Input: Integer representing the number of minutes

Output: Time in hh:mm format

Rules: 0 returns midnight
       should be able to handle numbers that are larger than one days worth of
          minutes.
       Hours place always has two digits

---------------- Modelling / Examples
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

---------------- Data Structures


---------------- Scratchpad
use modulo?  

-1437 % 1440 = 3 --> this would correctly change the time to 00:03

---------------- Algorithm
- modulo integer with 1440 (number of minutes in a day)
- divide result by 60 to get number of hours
- modulo result with 60 to get number of minutes
- create string with format hh:mm
- return string
=end

MINUTES_IN_DAY = 1440
MINUTES_IN_HOUR = 60

def time_of_day(int)
  minutes_after_midnight = int % MINUTES_IN_DAY
  hours = minutes_after_midnight / MINUTES_IN_HOUR
  minutes = minutes_after_midnight % MINUTES_IN_HOUR

  format("%02d:%02d", hours, minutes)
end 

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"