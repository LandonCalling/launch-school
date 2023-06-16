=begin
The Array#reject method uses the truthiness of the return value of the block
to reject elements.  This means that if the return value is truthy for that
element it will reject that element.  

In this case, the return value is always nil, which is falsey, since the last
line in the block is a puts statement which returns nil.  This means that the
return value of reject will be an array with the same elements as the calling
array.
=end

arr = [1, 2, 3].reject do |num|
  puts num
end

p arr