def print_in_box(string)
  banner_length = string.length + 2
  banner_head_foot = '+' + '-' * banner_length + '+'
  banner_spacer = '|' + ' ' * banner_length + '|'
  banner_text = '|' + ' ' + string + ' ' + '|'

  puts banner_head_foot
  puts banner_spacer
  puts banner_text
  puts banner_spacer
  puts banner_head_foot
end


print_in_box('To boldly go where no one has gone before.')

=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end

print_in_box('')

=begin
+--+
|  |
|  |
|  |
+--+
=end