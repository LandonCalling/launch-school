# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# This will print out the following:
# 1
# 2
# 2
# 3
# because the uniq method doesn't mutate the caller, so numbers is
# left intact.