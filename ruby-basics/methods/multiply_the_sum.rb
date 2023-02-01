def add(operand_one, operand_two)
  operand_one + operand_two
end

def multiply(factor_one, factor_two)
  factor_one * factor_two
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36