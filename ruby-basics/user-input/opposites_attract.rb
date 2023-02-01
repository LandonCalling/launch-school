def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

numbers = []

loop do
  2.times do |i|
    entry = nil

    loop do
      puts ">> Please enter a positive or negative integer:" 
      entry = gets.chomp

      break if valid_number?(entry)

      puts "Invalid input.  Only non-zero integers are allowed."
    end

    numbers[i] = entry.to_i
  end

  valid_input_check = numbers[0] * numbers[1]

  break if valid_input_check < 0

  puts "Sorry.  One integer must be positive, one must be negative."
  puts "Please start over."
end

result = numbers[0] + numbers[1]
puts "#{numbers[0]} + #{numbers[1]} = #{result}"