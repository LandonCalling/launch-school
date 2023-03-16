=begin
The first implementation will mutate the argument buffer by adding the new 
element as well as remaoving the old.  The second implementation does not
mutate the array argument, but assigns a new array to work on.
=end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end