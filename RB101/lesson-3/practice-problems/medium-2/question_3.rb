def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

# string arg one will be unchanged because inside the method it is being
# used with the += method.  Reassignment changes the memory space pointed to
# and thus creates a new object that doesn't get returned to string arg one

# string arg two will be mutated, because inside the method it is being
# used with the << method.  This method does not create a new object. It
# merely changes the existing string in place.

# pumpkins
# pumpkinsrutabaga