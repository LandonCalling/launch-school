require 'yaml'

PLAY_AGAIN_RESPONSE = %w(y yes n no)
AFFIRMATIVE = %w(y yes)
VALID_CHOICE = %w(r p s l sp)
MAX_SCORE = 3
WINNING_MOVES = {
                  :r  => %w(s l),
                  :p  => %w(r sp),
                  :s  => %w(p l),
                  :sp => %w(s r),
                  :l  => %w(sp p)
                }
CHOICE_MAP = {
               :r  => 'rock',
               :p  => 'paper',
               :s  => 'scissors',
               :sp => 'spock',
               :l  => 'lizard',
             }

MESSAGES = YAML.load_file("rpsls.yaml")

def prompt(message)
  puts "=> #{message}"
end

def get_user_choice
  choice = ''
  
  loop do
    MESSAGES["user_choices"].each{ |string| prompt(string) }
    choice = gets.chomp.downcase
    
    break if valid_choice?(choice)
    
    prompt(MESSAGES["invalid_user_choice"])
  end
  
  choice
end

def valid_choice?(choice)
  VALID_CHOICE.include?(choice)
end

def determine_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'tie'
  end
end

def win?(first, second)
  WINNING_MOVES[first.to_sym].include?(second)
end

def display_winner(string)
  case string
  when 'player'   then prompt(MESSAGES["user_winner"])
  when 'computer' then prompt(MESSAGES["comp_winner"])
  else                 prompt(MESSAGES["tie"])
  end
end

def display_grand_winner(score_hash)
  if score_hash[:player] == 3
    prompt(MESSAGES["user_grand_winner"])
  else
    prompt(MESSAGES["comp_grand_winner"])
  end
end

def get_play_again_response
  answer = ''
 
  loop do
    prompt(MESSAGES["play_again"])
    answer = gets.chomp.downcase
    
    break if valid_play_again_response?(answer)
    
    prompt(MESSAGES["invalid_play_again"])
  end
  
  answer
end

def valid_play_again_response?(string)
  PLAY_AGAIN_RESPONSE.include?(string)
end

def max_score_reached?(score_hash)
  score_hash[:player] == 3 || score_hash[:computer] == 3
end

def do_again?(string)
  AFFIRMATIVE.include?(string)
end

# Main

system("clear") || system("cls")
prompt(MESSAGES["welcome"])
prompt(MESSAGES["rule_1"])
prompt(MESSAGES["rule_2"])

loop do
  scores = { :player => 0, :computer => 0 }

  loop do
    choice = get_user_choice
    computer_choice = VALID_CHOICE.sample
    winner = determine_winner(choice, computer_choice)
    
    prompt(MESSAGES["user"] + "#{CHOICE_MAP[choice.to_sym]}.")
    prompt(MESSAGES["comp"] + "#{CHOICE_MAP[computer_choice.to_sym]}.")
    
    display_winner(winner)
    scores[winner.to_sym] += 1 unless winner == 'tie'
    
    prompt(
           format(
                  MESSAGES["score"], 
                  player:  scores[:player], 
                  computer: scores[:computer]
                 )
          )
    
    break if max_score_reached?(scores)
    
    prompt(MESSAGES["continue"])
    gets
    
    system("clear") || system("cls")
  end
  
  display_grand_winner(scores)
  answer = get_play_again_response
  
  break unless do_again?(answer)
  
  system("clear") || system("cls")
end

prompt(MESSAGES["goodbye"])