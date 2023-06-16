=begin
---------------- Problem
Restate Problem: Given a string representing the time of day, return an integer
  representing the number of minutes before/after midnight

Input: string

Output: integer

Rules: cannot use the Date or Time classes
       Must be able to handle both 00:00 and 24:00
       return value in the range of 0..1439
       must have two methods, one for before, one for after

Assumptions:  Given string is always of the form hh:mm

---------------- Modelling / Examples
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

---------------- Data Structures


---------------- Scratchpad
hours % 24 to account for the 24:00

---------------- Algorithm
- after midnight method
  - Parse hours and minutes from given string
    - slice first two chars
    - convert to integer
    - store as hours
    - repeat for the last two chars and store as minutes
  - Modulo hours with 24 to account for 24:00
  - Multiply hours by 60 and add to minutes
  - return minutes
- before midnight method
  - determine minutes after midnight
  - subtract from 1440
  - return result
=end

HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60

def after_midnight(string)
  hours = string[0, 2].to_i
  minutes = string[-2, 2].to_i

  hours = hours % HOURS_IN_DAY # modulo hours with 24 to account for possible 24
  hours * MINUTES_IN_HOUR + minutes
end

def before_midnight(string)
  minutes_after_midnight = after_midnight(string)
  minutes_in_day = HOURS_IN_DAY * MINUTES_IN_HOUR

  minutes = minutes_in_day - minutes_after_midnight
  minutes % minutes_in_day # modulo with 1440 to account for midnight
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0