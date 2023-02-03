# Valid values for orientation are as follows
#  - TL - Top Left
#  - TR - Top Right
#  - BL - Bottom Left
#  - BR - Bottom Right
def triangle(length, orientation='BR')
  case orientation
  when 'BR'
    length.times do |i|
      string = '*' * (i + 1)
      puts string.rjust(length)
    end
  when 'BL'
    length.times do |i|
      string = '*' * (i + 1)
      puts string.ljust(length)
    end
  when 'TR'
    index = length

    while index > 0
      string = '*' * (index)
      puts string.rjust(length)
      index -= 1
    end
  when 'TL'
    index = length
    
    while index > 0
      string = '*' * (index)
      puts string.ljust(length)
      index -= 1
    end
  end
end

triangle(5)
triangle(9, 'BL')
triangle(7, 'TR')
triangle(11, 'TL')