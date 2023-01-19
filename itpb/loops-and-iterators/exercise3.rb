def countdown(number)
  puts number

  if number <= 0
    return
  end

  countdown(number -  1)
end

countdown(6)
countdown(10)
countdown(-3)