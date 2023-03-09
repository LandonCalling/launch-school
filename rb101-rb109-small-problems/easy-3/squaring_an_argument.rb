def multiply(first_num, second_num)
  first_num * second_num
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64