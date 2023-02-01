say_hello = true
iterations = 0

while say_hello
  iterations += 1
  puts 'Hello!'
  if iterations >= 5
    say_hello = false
  end
end