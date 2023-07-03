def multiply_list(first, second)
  first.zip(second).map! { |arr| arr[0] * arr[1] }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]