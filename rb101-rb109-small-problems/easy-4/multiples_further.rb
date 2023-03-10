def multisum(max_value)
  (1..max_value).inject(0) do |sum, num|
    num % 3 == 0 || num % 5 == 0 ? (sum + num) : sum
  end
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

