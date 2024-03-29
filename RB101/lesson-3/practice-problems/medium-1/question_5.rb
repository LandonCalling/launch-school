=begin
The limit variable is out of scope since it is defined outside of the
method.  To fix this we either define it inside the method, or pass it in
as an argument to make it more dynamic.
=end

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"