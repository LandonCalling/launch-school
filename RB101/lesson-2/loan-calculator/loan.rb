RESPONSES = %w(y yes n no)

def prompt(message)
  puts "=> #{message}"
end

def get_loan_amt
  loan_amt = ''

  loop do
    prompt("Please enter the amount of the loan:")
    loan_amt = gets.chomp

    break if valid_loan_amt?(loan_amt)

    prompt("Must enter a positive non-zero number for loan amount. " +
           "Please try again.")
  end

  loan_amt.to_f
end

def valid_loan_amt?(num_string)
  valid_number?(num_string) && !num_string.to_f.zero?
end

def get_apr
  rate = ''

  loop do
    prompt("Please enter the Annual Percentage Rate (APR) of the loan " +
           "as a percentage:")
    prompt("e.g. if your APR is 4.5% then you would enter 4.5 and not .045")
    rate = gets.chomp

    break if valid_apr?(rate)

    prompt("Must enter a number between 0 and 30 inclusive. Please try again.")
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
  loan_dur = ''

  loop do
    prompt("Please enter the loan duration rounded to the nearest half a year:")
    prompt("e.g. 20 and 20.5 are acceptable entries, but 15.3 or 17.9 are not.")
    loan_dur = gets.chomp

    break if valid_duration?(loan_dur)

    prompt("Must be a positive non-zero number rounded to the nearest half " +
           "year.  Please try again.")
  end

  loan_dur.to_f
end

=begin
The regex in the following method looks for a string that contains the
following:
  - 1 or more digits at the beginning of the string
  - followed by an optional period
  - followed by an optional 5
  - followed by zero or more 0's at the end of the string
=end

def valid_duration?(num_string)
  /^\d+\.?5?0*$/.match?(num_string) && !num_string.to_f.zero?
end

def calc_monthly_payment(loan_amt, monthly_rate, loan_dur_months)
  loan_amt * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_dur_months)))
end

def get_do_again_response
  answer = ''

  loop do
    prompt("Would you like to calculate another loan payment? " +
           "(y for yes, n for no)")
    answer = gets.chomp.downcase

    break if valid_do_again_response(answer)

    prompt("Must enter y or n for your response.  Please try again.")
  end

  answer
end

def valid_do_again_response(string)
  RESPONSES.include?(string)
end

def do_again?(string)
  string.start_with?('y')
end

# Main

system("clear") || system("cls")
prompt("Welcome to the Mortgage and Auto Loan Calculator!")

loop do
  loan_amount = get_loan_amt
  apr = get_apr / 100
  loan_duration_in_years = get_loan_duration

  monthly_interest_rate = apr / 12
  loan_duration_in_months = loan_duration_in_years * 12

  monthly_payment = calc_monthly_payment(loan_amount,
                                         monthly_interest_rate,
                                         loan_duration_in_months)
                                         
  prompt("Your monthly payment will be #{monthly_payment}")
  answer = get_do_again_response

  break unless do_again?(answer)

  system("clear") || system("cls")
end

prompt("Thank you for using the Mortgage and Auto Loan Calculator. Goodbye.")