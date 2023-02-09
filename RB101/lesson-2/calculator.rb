# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(num)
  case num
  when 1 then 'Adding'
  when 2 then 'Subtracting'
  when 3 then 'Multiplying'
  when 4 then 'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''

loop do
  name = gets.chomp

  break unless name.empty?

  prompt("Make sure to use a valid name.")
end

prompt("Hi #{name}!")

loop do # main loop
  num1 = ''

  loop do
    prompt("What's the first number?")
    num1 = gets.chomp

    break if valid_number?(num1)

    prompt("Hmm... that doesn't look like a valid number.")
  end

  num2 = ''

  loop do
    prompt("What's the second number?")
    num2 = gets.chomp

    break if valid_number?(num2)

    prompt("Hmm... that doesn't look like a valid number.")
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = gets.chomp

    break if %w(1 2 3 4).include?(operator)

    prompt("Must choose 1, 2, 3, or 4")
  end

  num1 = num1.to_i
  num2 = num2.to_i
  operator = operator.to_i

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when 1 then num1 + num2
           when 2 then num1 - num2
           when 3 then num1 * num2
           when 4 then num1.to_f / num2
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (y to calculate again)")
  user_answer = gets.chomp

  break unless user_answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator!")
