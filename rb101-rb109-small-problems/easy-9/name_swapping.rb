def swap_name(name)
  name = name.split
  name[0], name[1] = name[1], name[0]
  name.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'