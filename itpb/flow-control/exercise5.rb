def equal_to_four(x)
  if x == 4
    puts 'yup'
  else
    puts 'nope'
                # <= There is a missing end statement here.  This is
                # why there is an unexpected end of input error when
                # running the program.
end

equal_to_four(5)