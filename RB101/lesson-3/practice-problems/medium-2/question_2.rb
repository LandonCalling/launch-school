a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# All three object ids will be the same this time, because numbers are 
# immutable, and each number has the same object id no matter how many
# variables you assign it to.