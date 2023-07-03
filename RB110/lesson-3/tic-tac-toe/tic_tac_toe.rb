PLAYER_MARKER = 'X'
COMPUTER_MARKER_= 'O'
INITIAL_MARKER = ' '

def prompt(msg_string)
  puts "=> #{msg_string}"
end

def prompt(msg_string)
  puts "=> #{msg_string}"
end

def display_board(board_state)
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board_state)
  board_state.keys.select { |num| board_state[num] == INITIAL_MARKER }
end

def player_move!(board_state)
  square = ''
  
  loop do
    prompt "Choose a square (#{empty_squares(board_state).join(',')})"
    square = gets.chomp.to_i
    break if empty_squares(board_state).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  board_state[square] = PLAYER_MARKER
end

board = initialize_board
display_board(board)

player_move!(board)
puts board.inspect
display_board(board)