def all_caps(string)
  string = string.upcase if string.length > 10
  return string
end

puts 'Enter a phrase:'
phrase = gets.chomp
puts all_caps(phrase) 