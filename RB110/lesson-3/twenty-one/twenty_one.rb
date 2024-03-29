require 'yaml'

CARD_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
SUITS = %w(hearts clubs diamonds spades)
DEALER_STAY_MIN = 17
MAX_SCORE = 5
MAX_HAND = 21
MOVES = %w(h s hit stay)
STAY = %w(s stay)
PLAYER_CHOICES = %w(y n yes no)
AFFIRMATIVE = %w(y yes)
MESSAGES = YAML.load_file('messages.yaml')
CARD_ART = YAML.load_file('card_art.yaml')

def busted?(entity)
  entity[:hand_total] > MAX_HAND
end

def calculate_total(hand)
  values = hand.map { |_suit, value| value }
  total = 0

  values.each do |value|
    total += score_card(value)
  end

  # correct for Aces
  values.select { |value| value == 'A' }.size.times do
    total -= 10 if total > MAX_HAND
  end

  total
end

def create_card_end(hand)
  num_cards = hand.size
  string = ''

  num_cards.times do
    string += '+-------+  '
  end

  string
end

def create_card_line2(hand)
  string = ''

  hand.each do |_suit, value|
    string += "|#{value.to_s.ljust(7)}|  "
  end

  string
end

def create_card_line7(hand)
  string = ''

  hand.each do |_suit, value|
    string += "|#{value.to_s.rjust(7)}|  "
  end

  string
end

def create_card_middle(hand, line)
  string = ''

  hand.each do |suit, _value|
    string += CARD_ART[suit][line]
  end

  string
end

def deal_card!(deck, number=1)
  deck.shift(number)
end

def dealer_turn!(player, dealer, deck)
  loop do
    display_dealt_cards(player, dealer, 'dealer')
    sleep(1)

    dealer[:busted] = busted?(dealer)
    break if dealer_turn_over?(dealer)

    dealer[:hand] += deal_card!(deck)
    dealer[:hand_total] = calculate_total(dealer[:hand])
  end
end

def dealer_turn_over?(dealer)
  dealer[:busted] || dealer[:hand_total] >= DEALER_STAY_MIN
end

def determine_winner(player, dealer)
  if player[:busted]
    1
  elsif dealer[:busted]
    2
  elsif dealer[:hand_total] > player[:hand_total]
    3
  elsif player[:hand_total] > dealer[:hand_total]
    4
  else
    5
  end
end

def display_current_score(player, dealer)
  prompt(MESSAGES['current_score'])
  prompt("#{player[:name]}: #{player[:score]}, Dealer: #{dealer[:score]}")
end

def display_dealer_hand(hand, turn)
  if turn == 'player'
    hand = hand.map(&:clone)
    hand[0] = ['unknown', '?']
  end

  display_hand(hand)
end

def display_dealt_cards(player, dealer, turn='player')
  system('clear') || system('cls')
  prompt('Dealer hand:')
  display_dealer_hand(dealer[:hand], turn)

  unless turn == 'player'
    prompt("Dealer current total: #{dealer[:hand_total]}")
  end

  prompt('Your hand:')
  display_hand(player[:hand])
  prompt("Your current total: #{player[:hand_total]}")
end

def display_game_winner(player, dealer)
  winner = if player[:score] == MAX_SCORE
             player[:name]
           elsif dealer[:score] == MAX_SCORE
             'Dealer'
           end

  prompt("#{winner} wins the game!")
end

def display_hand(hand)
  puts create_card_end(hand)
  puts create_card_line2(hand)

  0.upto(3) do |line|
    puts create_card_middle(hand, line)
  end

  puts create_card_line7(hand)
  puts create_card_end(hand)
end

def display_round_winner(player, dealer)
  winner = determine_winner(player, dealer)

  case winner
  when 1
    prompt("#{player[:name]} busted! Dealer wins the round!")
  when 2
    prompt("Dealer busted! #{player[:name]} wins the round!")
  when 3
    prompt("Dealer wins the round!")
  when 4
    prompt("#{player[:name]} wins the round!")
  else
    prompt("Its a tie!")
  end
end

def game_intro
  system('clear') || system('cls')
  prompt('Welcome to Twenty One!')
  prompt('In this game you will be playing against the dealer.')
  prompt('At the start of each round, ' \
         'you and the dealer will each be dealt 2 cards.')
  prompt('Player goes first, and can either hit or stay.')
  prompt("If either you or the dealer get over #{MAX_HAND} you bust.")
  prompt('At the end of each round the hand score will be compared.')
  prompt('Whomever has the highest hand score without going over ')
  prompt('Will get a point and win the round.')
  prompt("First one to #{MAX_SCORE} wins.")
end

def get_player_name
  name = ''

  loop do
    prompt('Please enter your name:')
    name = gets.chomp

    break if valid_name?(name)

    prompt('That is not a valid name.')
    prompt('Please enter a name that is not either blank or whitespace.')
  end

  name
end

def get_player_move
  move = ''

  loop do
    prompt("Your move:")
    prompt("Press 'h' to hit or 's' to stay")
    move = gets.chomp.downcase

    break if valid_choice?(move)

    prompt('That is not a valid choice.')
    prompt('Only h, s, hit or stay are valid choices.')
    prompt('Please try again.')
  end

  move
end

def get_player_play_again_choice
  answer = ''

  loop do
    prompt('Would you like to play again?  (y/n)')
    answer = gets.chomp.downcase

    break if valid_play_again_response?(answer)

    prompt('That is not a valid choice. Please try again.')
    prompt('Acceptable answers are y, n, yes, or no.')
  end

  answer
end

def initialize_deck
  SUITS.product(CARD_VALUES).shuffle
end

def initialize_round!(player, dealer, deck)
  player[:hand] += deal_card!(deck, 2)
  dealer[:hand] += deal_card!(deck, 2)
  player[:hand_total] = calculate_total(player[:hand])
  dealer[:hand_total] = calculate_total(dealer[:hand])
end

def max_score_reached?(player, dealer)
  player == MAX_SCORE || dealer == MAX_SCORE
end

def play_again?(answer)
  AFFIRMATIVE.include?(answer)
end

def player_stays?(string)
  STAY.include?(string)
end

def player_turn!(player, dealer, deck)
  loop do
    display_dealt_cards(player, dealer)

    if busted?(player)
      player[:busted] = true
      break
    end

    move = get_player_move

    break if player_stays?(move)

    player[:hand] += deal_card!(deck)
    player[:hand_total] = calculate_total(player[:hand])
  end
end

def prompt(message)
  puts "=> #{message}"
end

def round_reset!(player, dealer)
  player[:hand] = []
  player[:hand_total] = 0
  player[:busted] = false
  dealer[:hand] = []
  dealer[:hand_total] = 0
  dealer[:busted] = false

  prompt('Press ENTER to start next round')
  gets
end

def score_card(card)
  case card
  when 'J', 'Q', 'K'
    10
  when 'A'
    11
  else
    card
  end
end

def score_round!(player, dealer)
  winner = determine_winner(player, dealer)

  case winner
  when 1, 3 then dealer[:score] += 1
  when 2, 4 then player[:score] += 1
  end
end

def valid_choice?(string)
  MOVES.include?(string)
end

# regex looks for a string containing only one or more whitespace characters.

def valid_name?(string)
  !(string.empty? || /^\s+$/.match?(string))
end

def valid_play_again_response?(string)
  PLAYER_CHOICES.include?(string)
end



# Main

game_intro
name = get_player_name

loop do
  player = {
    hand: [],
    busted: false,
    hand_total: 0,
    score: 0,
    name: name
  }
  dealer = {
    hand: [],
    busted: false,
    hand_total: 0,
    score: 0
  }

  loop do
    deck = initialize_deck
    initialize_round!(player, dealer, deck)
    player_turn!(player, dealer, deck)
    dealer_turn!(player, dealer, deck) unless player[:busted]
    display_round_winner(player, dealer)
    score_round!(player, dealer)
    display_current_score(player, dealer)

    break if max_score_reached?(player[:score], dealer[:score])

    round_reset!(player, dealer)
  end

  display_game_winner(player, dealer)
  answer = get_player_play_again_choice

  break unless play_again?(answer)
end

prompt('Thank you for playing Twenty-One! Goodbye.')
