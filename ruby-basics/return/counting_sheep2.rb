def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 0
# 1
# 2
# 3
# 4
# 10

# This time instead of the times method being the last line in the count_sheep
# method, the number 10 is.  So the program will print 0 through 4, and then 10.