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

SECONDS_PER_MIN = 60

def time_of_day(int)
  time = Time.new(2023, 05, 21, 0, 0, 0)
  seconds = int * SECONDS_PER_MIN
  adj_time = time + seconds
  
  weekday = case adj_time.wday
            when 0 then "Sunday"
            when 1 then "Monday"
            when 2 then "Tuesday"
            when 3 then "Wednesday"
            when 4 then "Thursday"
            when 5 then "Friday"
            when 6 then "Saturday"
            end

  format("%s %02d:%02d", weekday , adj_time.hour, adj_time.min)
end 

puts time_of_day(0) == "Sunday 00:00"
puts time_of_day(-3) == "Saturday 23:57"
puts time_of_day(35) == "Sunday 00:35"
puts time_of_day(-1437) == "Saturday 00:03"
puts time_of_day(3000) == "Tuesday 02:00"
puts time_of_day(800) == "Sunday 13:20"
puts time_of_day(-4231) == "Thursday 01:29"