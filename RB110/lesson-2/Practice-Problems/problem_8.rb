hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh.each do |_, string_arr|
  string_arr.each do |string|
    string.chars.each do |char|
      puts char if %w(a e i o u).include?(char)
    end
  end
end