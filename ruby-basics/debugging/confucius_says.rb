def get_quote(person)
  case person
  when 'Yoda'      then 'Do. Or do not. There is no try.'
  when 'Confucius' then 'I hear and I forget. I see and I remember. I do and I understand.'
  when 'Einstein'  then 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

=begin
  Methods return the value returned by the last line run in the code.  Since
  there are three separate if statements, all three will run no matter which
  name you put in as the method parameter.  Meaning that you will always get
  either nil or the Einstein quote as the returned value.  Since you can't
  convert a nil to a string it gives an error.  To correct this we convert
  the three separate if statements into one case statement.
=end