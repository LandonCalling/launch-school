name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# In this case the print statement will print BOB both times
# This is because the of line 2.
# In line 2, save_name is assigned to name.  Meaning it points to 
# the same space in memory as name.
# Since the upcase! method mutates the caller, it will affect both 
# name and save_name because they both point to the same place in memory.