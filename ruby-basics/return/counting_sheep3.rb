def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0
# 1
# 2
# nil

# In this case we print 0 through 2, and then the return statement executes.
# Becuase there is no data/method with the return statement, it will return nil.