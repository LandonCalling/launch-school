daylight = [true, false].sample

def time_of_day(its_daytime)
  if its_daytime
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)