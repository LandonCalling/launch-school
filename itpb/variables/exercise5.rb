# program 1
x = 0
3.times { x += 1 }
puts x # this will print the number 3

# program 2
y = 0
3.times do
  y += 1
  x = y
end
puts x # this will give an error since
       # x is defined in the block scope
       # and does not exist outside of it