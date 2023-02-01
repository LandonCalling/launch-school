array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# This will output an error.  Since a is defined within the block, its scope
# is local to the block.  It doesn't exist outside the block.