def print_in_box(string)
  banner_length = 76
  banner_head_foot = '+' + '-' * (banner_length + 2) + '+'
  banner_spacer = '|' + ' ' * (banner_length + 2) + '|'
  spliced_string = string_splicer(string, banner_length)
  
  spliced_string.map! do |str|
    str.chomp(' ').ljust(banner_length)
  end

  puts banner_head_foot
  puts banner_spacer

  spliced_string.each{ |str| puts "| #{str} |" }

  puts banner_spacer
  puts banner_head_foot
end

def string_splicer(string, banner_length)
  spliced_string = []
  string = string.split
  temp_string = ''

  string.each do |word|
    if (temp_string.length + word.length) <= banner_length
      temp_string += word
      temp_string += ' '    
   else
      spliced_string.push(temp_string)
      temp_string = word + ' '
   end
  end

  spliced_string.push(temp_string)
  spliced_string
end

print_in_box('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
