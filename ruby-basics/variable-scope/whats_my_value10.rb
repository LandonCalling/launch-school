a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# This will output an error.  The variable a being used inside the method
# has no connection to the a being defined outside the method. As a result,
# the variable a being used inside the method has an initial value of nil.
# because it was never initialized inside the method.  We can't add a number 
# to nil, so it returns an error.