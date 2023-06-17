def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

=begin
The string returned by this method will be a new object rather than the one
passed in as an argument.  Once we split the string into an array of words
it creates a new array object.  Then the each object reverses the letters of
each word in the array destructively.  The array object (still the same as the
original array that was iterated over) is then joined with spaces to create a 
new string object.
=end