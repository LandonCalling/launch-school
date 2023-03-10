def short_long_short(first, second)
  if first.length > second.length
    second + first + second
  else
    first + second + first
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"