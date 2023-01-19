h = {a: 1, b: 2, c: 3, d: 4}

# 1
h[:b]

# 2
h[:e] = 5

# 3
h.keep_if { |num| num > 3.5 }