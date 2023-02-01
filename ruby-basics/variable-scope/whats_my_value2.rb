a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# This will print out 7.  Due to scoping rules, the variable a created inside
# the my_value method is a separate variable than the variable a created
# outside it.  It is in essence just like the previous problem.  It doesn't
# matter that the variable has the same name as a variable outside the method.