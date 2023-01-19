arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1
arr.index(5)
# This will return the index of the first number 5 found, so 3

# 2
arr.index[5]
# This returns a NoMethodError because the index method is only
# defined with parentheses, and not square brackets

# 3
arr[5]
# This will return the element at index 5, so the number 8