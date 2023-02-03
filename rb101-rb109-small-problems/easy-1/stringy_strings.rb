def stringy(string_length)
  final_string = ''

  for i in 1..string_length
    if i.odd?
      final_string += '1'
    else
      final_string += '0'
    end
  end

  final_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'