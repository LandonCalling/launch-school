def stringy(string_length, starting_value=1)
  final_string = ''

  if starting_value == 1
    for i in 1..string_length
      if i.odd?
        final_string += '1'
      else
        final_string += '0'
      end
    end
  else
    for i in 1..string_length
      if i.odd?
        final_string += '0'
      else
        final_string += '1'
      end
    end
  end

  final_string
end

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'