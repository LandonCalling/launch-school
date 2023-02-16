require 'yaml'

MESSAGES = YAML.load_file("messages.yaml")
AFFIRMATIVE = %w(y yes j ja)
LANGUAGES = %w(en de)
OPERATIONS = %w(1 2 3 4)
ANSWERS = %w(y yes n no j ja nein)

def prompt(message)
  puts "=> #{message}"
end

def get_language
  MESSAGES['welcome'].each { |string| prompt(string) }
  answer = ''

  loop do
    MESSAGES['languages'].each { |string| prompt(string) }
    answer = gets.chomp.downcase

    break if valid_language?(answer)

    MESSAGES['invalid_language'].each { |string| prompt(string) }
  end

  answer
end

def valid_language?(string)
  LANGUAGES.include?(string)
end

def get_name(language)
  name = ''

  loop do
    prompt(MESSAGES[language]['name_entry'])
    name = gets.chomp

    break if valid_name?(name)

    prompt(MESSAGES[language]['invalid_name'])
  end

  prompt(MESSAGES[language]['greeting'] + name + '!')
end

# The regex in the following method looks for a string containing only
# one or more whitespace characters.

def valid_name?(string)
  !(string.empty? || /^\s+$/.match?(string))
end

def get_number(language, index)
  answer = ''

  loop do
    prompt(MESSAGES[language]['number'][index])
    answer = gets.chomp

    break if valid_number?(answer)

    prompt(MESSAGES[language]['invalid_number'])
  end

  answer.to_f
end

def valid_number?(number)
  valid_integer?(number) || valid_float?(number)
end

# the regex in the following method looks for a string that contains
# only digits and an optional single dash at the beginning of the string

def valid_integer?(num)
  /^-?\d+$/.match?(num)
end

=begin
The regex in the following method looks for a string that contains one of
two formats.
Either:
  - optional single dash at the beginning of the string
  - followed by zero or more digits
  - followed by a single period
  - followed by one or more digits at the end of the string
Or:
  - optional single dash at the beginning of the string
  - followed by one or more digits
  - followed by a single period at the end of the string
=end

def valid_float?(num)
  /^-?\d*\.\d+$/.match?(num) || /^-?\d+\.$/.match?(num)
end

def get_operator(language)
  answer = ''

  loop do
    prompt(MESSAGES[language]['ops'])
    answer = gets.chomp

    break if valid_operator?(answer)

    prompt(MESSAGES[language]['invalid_op'])
  end

  answer.to_i
end

def valid_operator?(string)
  OPERATIONS.include?(string)
end

def division_by_zero?(op_num, operands_arr)
  (op_num == 4) && (operands_arr[1] == 0)
end

def calc_result(op_num, num_arr)
  result = case op_num
           when 1 then num_arr[0] + num_arr[1]
           when 2 then num_arr[0] - num_arr[1]
           when 3 then num_arr[0] * num_arr[1]
           when 4 then num_arr[0] / num_arr[1]
           end

  result
end

def get_do_again_response(language)
  answer = ''

  loop do
    prompt(MESSAGES[language]['do_again'])
    answer = gets.chomp.downcase

    break if valid_answer?(answer)

    prompt(MESSAGES[language]['invalid_answer'])
  end

  answer
end

def valid_answer?(string)
  ANSWERS.include?(string)
end

def do_again?(string)
  AFFIRMATIVE.include?(string)
end

# Main

system("clear") || system("cls")
language = get_language()
get_name(language)

loop do
  numbers = Array.new(2)
  operator = nil

  loop do
    2.times { |i| numbers[i] = get_number(language, i) }
    operator = get_operator(language)

    break unless division_by_zero?(operator, numbers)

    prompt(MESSAGES[language]['zero_divison'])
  end

  prompt(MESSAGES[language]['operators'][operator - 1] +
         MESSAGES[language]['processing'])

  result = calc_result(operator, numbers)
  result = format("%.2f", result)
  prompt(MESSAGES[language]['result'] + result + ".")
  answer = get_do_again_response(language)

  if do_again?(answer)
    system("clear") || system("cls")
  else
    break
  end
end

prompt(MESSAGES[language]['goodbye'])
