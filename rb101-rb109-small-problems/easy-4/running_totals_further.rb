def running_total(array)
  sum = 0
  
  array.each_with_object([]) do |num, arr|
    sum += num
    arr << sum
  end
end