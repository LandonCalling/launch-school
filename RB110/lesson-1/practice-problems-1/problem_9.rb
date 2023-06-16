=begin
The method Enumerable#map returns an array of the objects returned by the block.

In this case, it will return [nil, 'bear'].  The first iteration, it doesn't
execute the if statement and returns nil.  The second iteration it runs the code
in the if statement and returns the value passed to the block.
=end

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end