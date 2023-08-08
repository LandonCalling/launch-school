require 'pry'

PLAY_AGAIN_RESPONSE = %w(yes y no n)
AFFIRMATIVE = %w(yes y)
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
INITIAL_MARKER = ' '
MAX_SCORE = 5
MAX_ROUNDS = 10
WIN_CONDITIONS = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
]

def prompt(msg_string)
  puts "=> #{msg_string}"
end

# rubocop:disable Metrics/AbcSize
def display_board(board_state)
  system('clear') || system('cls')
  puts "You're: #{PLAYER_MARKER}  Computer is: #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{board_state[1]}  |  #{board_state[2]}  |  #{board_state[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_state[4]}  |  #{board_state[5]}  |  #{board_state[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_state[7]}  |  #{board_state[8]}  |  #{board_state[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board_state)
  board_state.keys.select { |num| board_state[num] == INITIAL_MARKER }
end

def play_round!(board_state)
  loop do
    display_board(board_state)

    player_move!(board_state)
    break if someone_won?(board_state) || board_full?(board_state)

    computer_move!(board_state)
    break if someone_won?(board_state) || board_full?(board_state)
  end
end

def joinor(choice_list, seperator=', ', keyword='or')
  if choice_list.length <= 2
    choice_list.join(" #{keyword} ")
  else
    choice_list[0..-2].join(seperator) +
      "#{seperator}#{keyword} #{choice_list[-1]}"
  end
end

def player_move!(board_state)
  square = ''

  loop do
    prompt("Choose a square (#{joinor(empty_squares(board_state))})")
    square = gets.chomp.to_i
    break if empty_squares(board_state).include?(square)
    prompt("Sorry, only open squares are valid choices.")
    prompt("Please try again.")
  end

  board_state[square] = PLAYER_MARKER
end

def computer_move!(board_state)
  square = find_at_risk_square(board_state, COMPUTER_MARKER) ||
           find_at_risk_square(board_state, PLAYER_MARKER) ||
           center_square(board_state) ||
           empty_squares(board_state).sample
  board_state[square] = COMPUTER_MARKER
end

def center_square(board_state)
  if board_state[5] == INITIAL_MARKER
    return 5
  end
  nil
end

def find_at_risk_square(board_state, marker)
  WINNING_LINES.each do |line|
    if immediate_threat?(board_state, line, marker)
      line.each do |space|
        if board_state[space] == INITIAL_MARKER
          return space
        end
      end
    end
  end
  nil
end

def immediate_threat?(board_state, line, marker)
  board_state.values_at(*line).count(marker) == 2 &&
    line.any? { |space| board_state[space] == INITIAL_MARKER }
end

def board_full?(board_state)
  empty_squares(board_state).empty?
end

def someone_won?(board_state)
  !!detect_winner(board_state)
end

def detect_winner(board_state)
  WIN_CONDITIONS.each do |line|
    if board_state.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif board_state.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end

  nil
end

def display_winner(board_state)
  if someone_won?(board_state)
    prompt("#{detect_winner(board_state)} won!")
  else
    prompt("It's a tie!")
  end
end

def update_scoreboard!(board_state, scores)
  winner = detect_winner(board_state)
  scores[winner] += 1 unless winner.nil?
end

def display_scoreboard(scores)
  prompt("Current Scoreboard:")
  prompt("You: #{scores['Player']} Computer: #{scores['Computer']}")
end

def max_reached?(scores, rounds)
  scores["Player"] == MAX_SCORE ||
    scores["Computer"] == MAX_SCORE ||
    rounds == MAX_ROUNDS
end

def display_grand_winner(scores)
  if scores["Player"] == MAX_SCORE
    prompt("Player has scored #{MAX_SCORE} points and wins the game!")
  elsif scores["Computer"] == MAX_SCORE
    prompt("Computer has scored #{MAX_SCORE} points and wins the game!")
  else
    prompt("#{MAX_ROUNDS} were played with no clear winner.")
    prompt("The game is a draw.")
  end
end

def get_play_again_response
  answer = ''

  loop do
    prompt("Do you want to play again? (y or n)")
    answer = gets.chomp

    break if valid_answer?(answer)

    prompt("I'm sorry only y, n, yes, or no are valid options.")
    prompt("Please try again.")
  end

  answer
end

def valid_answer?(string)
  PLAY_AGAIN_RESPONSE.include?(string)
end

def play_again?(string)
  AFFIRMATIVE.include?(string)
end

# Main

loop do
  scoreboard = { 'Player' => 0, 'Computer' => 0 }
  rounds_played = 0

  loop do
    board = initialize_board
    play_round!(board)
    display_board(board)
    display_winner(board)
    update_scoreboard!(board, scoreboard)
    display_scoreboard(scoreboard)
    rounds_played += 1

    break if max_reached?(scoreboard, rounds_played)

    prompt("Press 'Enter' to play the next round...")
    gets
  end

  display_grand_winner(scoreboard)

  answer = get_play_again_response

  break unless play_again?(answer)
end

prompt("Thanks for playing Tic-Tac-Toe! Goodbye!")
