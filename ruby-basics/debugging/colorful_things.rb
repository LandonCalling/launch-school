colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook', 'car']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

=begin
  There are two problems with this code that produce the same error.  First is
  that the things array is one shorter than the colors array.  So the last
  puts statement errors because things[i] is referencing a position outside
  the array so it returns nil. To fix this we add an element to the things
  array
  
  The second problem is the break statement.  The last viable index in the array
  is the length of the array minus one.  So if we iterate until i is greater
  than the array length then our last iteration will reference positions in the
  colors and things array that are outside the array bounds, which again will
  produce a nil value.  To fix this we change the > to a >=.
=end