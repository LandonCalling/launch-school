def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my string will be pumpkinsrutabaga because of the << method mutating the
# argument.  a_string_param and my_string both reference the same object, so
# when one is changed so is the other.

# my array will remain unchanged because we are performing reassignment on
# the parameter an_array_param which creates a new object.  