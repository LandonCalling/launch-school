=begin
---------------- Problem
Restate Problem:

Input: 

Output: 

Rules: 

Assumptions: 

---------------- Modelling / Examples
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

---------------- Data Structures


---------------- Scratchpad
76.73
  - 76 degrees
  - .73 * 60 = 43.8 minutes
  - .8 * 60 = 48 seconds

---------------- Algorithm
- calculate degrees
  - round given number down to nearest whole number
  - store that as degrees
- calculate minutes
  - subtract degrees from given number
  - take decimal and multiply by 60
  - store as intermediate result
  - round intermediate result down to nearest whole number
  - store as minutes
- calculate seconds
  - subtract minutes from intermediate result
  - take decimal and multiply by 60
  - round down to nearest whole number
  - store as seconds
- convert degrees, minutes, and seconds into strings
- format minutes and seconds to have leading zero if less than ten
- concatenate degrees, deg symbol, minutes, ', seconds, "
=end

DEGREES_MAX = 360
MIN_SEC_CONVERSION= 60
DEGREE = "\xC2\xB0"

def dms(number)
  number = number % DEGREES_MAX
  degrees = number.floor
  intermediate = (number - degrees) * MIN_SEC_CONVERSION
  minutes = intermediate.floor
  intermediate = (intermediate - minutes) * MIN_SEC_CONVERSION
  seconds = intermediate.floor

  minutes = format('%02d', minutes)
  seconds = format('%02d', seconds)

  degrees.to_s + DEGREE + "#{minutes}'#{seconds}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) # == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts (dms(360) == %(360°00'00") || dms(360) == %(0°00'00"))
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")