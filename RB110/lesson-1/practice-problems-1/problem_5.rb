=begin
The Hash#shift function removes the first key/value pair from the hash and
returns it as an array where the elements are the key and value.  This is a
destructive method, meaning the original hash is modified.  So the hash will
be {b: bear} after the shift method is run.
=end

hash = { a: 'ant', b: 'bear' }
p hash.shift
p hash