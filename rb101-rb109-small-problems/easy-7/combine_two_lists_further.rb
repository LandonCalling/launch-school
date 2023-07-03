def interleave(first_array, second_array)
  first_array.zip(second_array).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']