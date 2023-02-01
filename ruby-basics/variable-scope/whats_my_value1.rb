a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# This will print out 7 because the assignment part of the b += 10 will
# stop b from pointing to the address that a is pointing to and make it
# point to another address in memory.