a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# This will print out 7 again.  Similar to the last two problems, the a
# referenced inside the method is a new variable and doesn't point to the
# same address in memory as the local variable a defined outside the method
# definition.