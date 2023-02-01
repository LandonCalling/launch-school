a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# This will print out "Xy-zy" because of the way ruby handles strings.  The
# variable a points to an address that stores the rest of addresses for the
# individual characters. Variables a and b both point to this address.  When
# we call b[2] = '-' it changes the character in memory for the character at 
# index 2 only and doesn't affect what a is pointing to at all.  Thus it 
# mutates the string.