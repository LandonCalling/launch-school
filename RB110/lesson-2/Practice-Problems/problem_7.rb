a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

puts a
puts b
 
# The final value of a will be 2.  This is due to the fact that the variable a
# is not an array.  So when it is stored as the first element of arr, that
# element is an integer.  Thus when we add 2 to arr[0] and then reassign it
# to 4 the link to the variable a is broken.  Leaving it as 2.

# The final value of b will be [3, 8].  Since a is unchanged we will subtract
# 2 from the first element of arr[1].  Since the variable b is an array, when
# we change an element of arr[1], arr[1] and b still point to the same
# sub-array.  Changing bot arr[1] and b.