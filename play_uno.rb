# http://play-k.kaserver5.org/Uno.html

def play_game
  deck = (1..108).to_a.shuffle!

  total_players = how_many_players
  # playe

  players = [
    1 => [],
    2 => [],
    3 => []
  ]
  stock_pile = []

  deal_seven_cards(deck, players)
  puts players
  stock_pile = get_top_card(deck)
  first_turn(players, stock_pile)

end

def how_many_players
  print 'Enter amount of players > '
  players = gets.chomp.to_i
end
# Deals seven cards to each player
def deal_seven_cards(deck, players)
  7.times do
    players.each do |player, hand|
      hand << pick_card(deck)
    end
  end

end

# Pick top card from deck
def pick_card(deck)
  deck.pop
end

# Returns selected card's value
def get_card_value(card)
  card_details = {
      '1' => 'Red 0',
      '2' => 'Red 1',
      '3' => 'Red 1',
      '4' => 'Red 2',
      '5' => 'Red 2',
      '6' => 'Red 3',
      '7' => 'Red 3',
      '8' => 'Red 4',
      '9' => 'Red 4',
      '10' => 'Red 5',
      '11' => 'Red 5',
      '12' => 'Red 6',
      '13' => 'Red 6',
      '14' => 'Red 7',
      '15' => 'Red 7',
      '16' => 'Red 8',
      '17' => 'Red 8',
      '18' => 'Red 9',
      '19' => 'Red 9',
      '20' => 'Red Draw Two',
      '21' => 'Red Draw Two',
      '22' => 'Red Skip',
      '23' => 'Red Skip',
      '24' => 'Red Reverse',
      '25' => 'Red Reverse',

      '26' => 'Blue 0',
      '27' => 'Blue 1',
      '28' => 'Blue 1',
      '29' => 'Blue 2',
      '30' => 'Blue 2',
      '31' => 'Blue 3',
      '32' => 'Blue 3',
      '33' => 'Blue 4',
      '34' => 'Blue 4',
      '35' => 'Blue 5',
      '36' => 'Blue 5',
      '37' => 'Blue 6',
      '38' => 'Blue 6',
      '39' => 'Blue 7',
      '40' => 'Blue 7',
      '41' => 'Blue 8',
      '42' => 'Blue 8',
      '43' => 'Blue 9',
      '44' => 'Blue 9',
      '45' => 'Blue Draw Two',
      '46' => 'Blue Draw Two',
      '47' => 'Blue Skip',
      '48' => 'Blue Skip',
      '49' => 'Blue Reverse',
      '50' => 'Blue Reverse',

      '51' => 'Green 0',
      '52' => 'Green 1',
      '53' => 'Green 1',
      '54' => 'Green 2',
      '55' => 'Green 2',
      '56' => 'Green 3',
      '57' => 'Green 3',
      '58' => 'Green 4',
      '59' => 'Green 4',
      '60' => 'Green 5',
      '61' => 'Green 5',
      '62' => 'Green 6',
      '63' => 'Green 6',
      '64' => 'Green 7',
      '65' => 'Green 7',
      '66' => 'Green 8',
      '67' => 'Green 8',
      '68' => 'Green 9',
      '69' => 'Green 9',
      '70' => 'Green Draw Two',
      '71' => 'Green Draw Two',
      '72' => 'Green Skip',
      '73' => 'Green Skip',
      '74' => 'Green Reverse',
      '75' => 'Green Reverse',

      '76' => 'Yellow 0',
      '77' => 'Yellow 1',
      '78' => 'Yellow 1',
      '79' => 'Yellow 2',
      '80' => 'Yellow 2',
      '81' => 'Yellow 3',
      '82' => 'Yellow 3',
      '83' => 'Yellow 4',
      '84' => 'Yellow 4',
      '85' => 'Yellow 5',
      '86' => 'Yellow 5',
      '87' => 'Yellow 6',
      '88' => 'Yellow 6',
      '89' => 'Yellow 7',
      '90' => 'Yellow 7',
      '91' => 'Yellow 8',
      '92' => 'Yellow 8',
      '93' => 'Yellow 9',
      '94' => 'Yellow 9',
      '95' => 'Yellow Draw Two',
      '96' => 'Yellow Draw Two',
      '97' => 'Yellow Skip',
      '98' => 'Yellow Skip',
      '99' => 'Yellow Reverse',
      '100' => 'Yellow Reverse',

      '101' => 'Wild Card',
      '102' => 'Wild Card',
      '103' => 'Wild Card',
      '104' => 'Wild Card',
      '105' => 'Wild Draw Four',
      '106' => 'Wild Draw Four',
      '107' => 'Wild Draw Four',
      '108' => 'Wild Draw Four'
  }

  card_value = card_details[card.to_s]
end

# Gets top card at the start of play
def get_top_card(deck)
  cards = []

  loop do
    cards << pick_card(deck)

    break if (cards.last < 101) || (cards.last > 104)
  end

  cards
end

def first_turn(players, stock_pile)
  first_player = rand(1..players.length)
  puts "Player #{first_player}, you've been chosen to play first"
  top_card = get_card_value(stock_pile.last)
  # puts "Top card ---> #{top_card}"

  case top_card
  when top_card.include?('Skip')
    pick
  when top_card.include?('Draw Two')

  when top_card.include?('Reverse')

  when top_card.include?('Draw Four')

  else

  end
end

def play_turn
  # If player has red card, play card
    # If card is skip, skip next player
    # If card is reverse, play previous player
    # If card draw two, add two to pick_up card count
end

play_game