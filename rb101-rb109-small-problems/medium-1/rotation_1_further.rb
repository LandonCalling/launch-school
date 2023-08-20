def rotate_array(array)
  copy = array.dup
  copy << copy.shift
end

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integers(int)
  rotate_array(int.digits.reverse).join.to_i
end