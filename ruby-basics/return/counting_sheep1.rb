def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# 0
# 1
# 2
# 3
# 4
# 5

# The times method takes passes a variable to the block that counts from 0 to
# 1 less than the number that called the times method.  So it will print 0 
# through 4 and then return a 5 which is then printed to the screen.