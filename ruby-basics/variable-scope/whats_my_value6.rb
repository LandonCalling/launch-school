a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# This will print out an error, because a is not defined within the scope of
# the method.  Methods do not have access to variables outside of their scope.