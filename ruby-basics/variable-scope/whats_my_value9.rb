a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# This will output 7.  Since we are using a as the variable passed by the
# block, it means that the variable a being used inside the block is the
# one local to the block.  It is not the same variable a that is defined
# outside the block.  Thus it does not change the variable a defined outside
# the block.