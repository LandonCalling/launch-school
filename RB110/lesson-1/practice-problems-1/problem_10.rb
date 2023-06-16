=begin
The Array#map method creates an array of the return values of the block.

In this example, it will print the num and return nil if the number is greater
than 1.  Otherwise it will return the num. So the return value of the call to
Array#map in the code below is [1, nil, nil]
=end

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end