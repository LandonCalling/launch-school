a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# This will print out 3.  The do/end portion of the each method call is a
# block, and blocks have access to variables defined outside their scope.
# Thus each time each iterates over the array, it reassigns the variable a
# to be the current element if the array it is using.