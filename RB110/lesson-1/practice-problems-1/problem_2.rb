=begin
We can find out how the Array#count method treats the block's return value by
looking in the documentation.  The documentation says that when count is called
without an argument and with a block given, that count will return a count of
elements for which the block returns a truthy value.  In this case, the count
will be 2.
=end

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end