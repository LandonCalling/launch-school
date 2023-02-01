def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# 1

# Because the if statement always evaluates to true, number = 1 will always
# be run last.  Therefore, 1 is printed to the screen.