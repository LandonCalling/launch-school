def center_of(string)
  middle = string.length / 2
  if string.length.odd?
    string[middle]
  else
    range = (middle-1)..(middle)
    string[range]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'