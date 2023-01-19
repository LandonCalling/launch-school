# 1 
arr = ["b", "a"]
arr = arr.product(Array(1..3))
p arr.first.delete(arr.first.last)

# This will return 1

# 2
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
p arr.first.delete(arr.first.last)

# This will return [1, 2, 3]