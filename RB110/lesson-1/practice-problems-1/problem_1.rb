=begin
The Array#select method uses the truthiness of the return value of the block
to select the values from the given array and returns a new array with
the selected values.

In this case since the last line is the string 'hi', which as the return value
will always be truthy, the select method will always select the value.  This
means that the array returned will be the same as the calling array.
=end

arr = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

p arr