def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

=begin
  The sunshine variable is an array of strings.  Since ruby treats all data
  except nil and false as truthy, it will always output the first option.
  To fix this we switch from string versions of truth and false to the boolean
  versions.
=end