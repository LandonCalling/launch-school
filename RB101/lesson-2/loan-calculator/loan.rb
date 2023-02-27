require 'yaml'

RESPONSES = %w(y yes n no)
AFFIRMATIVE = %w(y yes)
MONTHS_PER_YEAR = 12

MESSAGES = YAML.load_file("loan.yaml")

def prompt(message)
  puts "=> #{message}"
end

def get_loan_amt
  loan_amt = ''

  loop do
    prompt(MESSAGES["enter_amount"])
    loan_amt = gets.chomp

    break if valid_loan_amt?(loan_amt)

    prompt(MESSAGES["invalid_amount"])
  end

  loan_amt.to_f
end

def valid_loan_amt?(num_string)
  valid_number?(num_string) && !num_string.to_f.zero?
end

def get_apr
  rate = ''

  loop do
    prompt(MESSAGES["enter_apr"])
    prompt(MESSAGES["example_apr"])
    rate = gets.chomp

    break if valid_apr?(rate)

    prompt(MESSAGES["invalid_apr"])
  end

  rate.to_f
end

def valid_apr?(num_string)
  valid_number?(num_string) && valid_percentage?(num_string.to_f)
end

def valid_number?(num_string)
  valid_integer?(num_string) || valid_float?(num_string)
end

# the regex in the following method looks for a string that contains
# only digits

def valid_integer?(num_string)
  /^\d+$/.match?(num_string)
end

=begin
The regex in the following method looks for a string that contains one of
two formats.
Either:
  - zero or more digits at the beginning of the string
  - followed by a single period
  - followed by one or more digits at the end of the string
Or:
  - one or more digits at the beginning of the string
  - followed by a single period at the end of the string
=end

def valid_float?(num_string)
  /^\d*\.\d+$/.match?(num_string) || /^\d+\.$/.match?(num_string)
end

def valid_percentage?(number)
  number <= 30.01 && number >= -0.01
end

def get_loan_duration
  loan_dur = Hash.new(2)
  
  loop do
    loan_dur[:years] = get_loan_duration_years
    loan_dur[:months] = get_loan_duration_months

    break unless both_zero?(loan_dur)

    prompt(MESSAGES["invalid_loan_duration"])
  end

  loan_dur
end

def get_loan_duration_years
  years = ''

  loop do
    prompt(MESSAGES["enter_years"])
    prompt(MESSAGES["example_year"])
    years = gets.chomp

    break if valid_integer?(years)

    prompt(MESSAGES["invalid_year_month"])
  end

  years.to_i
end

def get_loan_duration_months
  months = ''

  loop do
    prompt(MESSAGES["enter_months"])
    prompt(MESSAGES["example_month"])
    months = gets.chomp

    break if valid_integer?(months)

    prompt(MESSAGES["invalid_year_month"])
  end

  months.to_i
end

def both_zero?(num_array)
  num_array[:years].to_i.zero? && num_array[:months].to_i.zero?
end

def calc_monthly_payment(loan_amt, monthly_rate, loan_dur_months)
  if monthly_rate.zero?
    loan_amt / loan_dur_months
  else
    loan_amt * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_dur_months)))
  end
end

def get_do_again_response
  answer = ''

  loop do
    prompt(MESSAGES["do_again"])
    answer = gets.chomp.downcase

    break if valid_do_again_response?(answer)

    prompt(MESSAGES["invalid_do_again"])
  end

  answer
end

def valid_do_again_response?(string)
  RESPONSES.include?(string)
end

def do_again?(string)
  AFFIRMATIVE.include?(string)
end

# Main

system("clear") || system("cls")
prompt(MESSAGES["welcome"])

loop do
  loan_amount = get_loan_amt
  apr = get_apr / 100
  loan_duration = get_loan_duration

  monthly_interest_rate = apr / MONTHS_PER_YEAR
  loan_duration_in_months = loan_duration[:years] * MONTHS_PER_YEAR +
                            loan_duration[:months]

  monthly_payment = calc_monthly_payment(loan_amount,
                                         monthly_interest_rate,
                                         loan_duration_in_months)
  monthly_payment = format('%.2f', monthly_payment)
  years = loan_duration_in_months / MONTHS_PER_YEAR
  months = loan_duration_in_months % MONTHS_PER_YEAR

  prompt(MESSAGES["loan_amount"] + "$#{loan_amount},")
  prompt(MESSAGES["apr"] + "#{apr * 100}%,")
  prompt(format(MESSAGES["loan_duration"], years: years, months: months))
  prompt(MESSAGES["monthly_payment"] + "$#{monthly_payment}.")

  answer = get_do_again_response

  break unless do_again?(answer)

  system("clear") || system("cls")
end

prompt(MESSAGES["goodbye"])
