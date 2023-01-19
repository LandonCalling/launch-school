x = "hi there"
my_hash = { x: "some value" }
# This hash uses the literal x value as a symbol key using
# the new notation introduced in Ruby 1.9.  Since there is
# a colon after x, it is no longer read as a variable, but
# is used as the symbol x.
my_hash2 = { x => "some value" }
# This hash uses the old notation for hashes and creates a 
# hash with a string as the key using the value held in the
# x variable