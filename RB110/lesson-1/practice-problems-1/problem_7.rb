=begin
The Array#any? method uses the truthiness of the block to determine the return
value of the method.  If any value returns truthy, then the method any? returns
true.

The block's return value is either true or false, and is determined by the last
statement in the block, in this case num.odd?.

Since some of the elements in the array are odd, the any? method will return
true.  This method will stop iterating if a true value is found, so only the
first iteration of the block will run.  Thus the only number output to the
screen will be 1.
=end

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end