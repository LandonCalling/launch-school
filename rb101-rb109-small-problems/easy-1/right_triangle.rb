def triangle(length)
  length.times do |i|
    string = '*' * (i + 1)
    puts string.rjust(length)
  end
end

triangle(5)
triangle(9)