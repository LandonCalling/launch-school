a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# This time it will leave a unchanged.  Since we are assigning a new object to
# the variable b, it will cease to point at the same address in memory as a
# thus leaving a unchanged.