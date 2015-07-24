require File.expand_path '../player', __FILE__

# ---------------------------------
# SETUP

puts 'Hi welcome to 500'

deck = Deck.new
deck.deal

player = Player.new(deck.north)

puts 'Here is your hand'

# make the hand look prettier
puts player.hand

# ---------------------------------
# BIDDING

puts 'What is your bid?'

bid = gets

puts 'You have bid #{bid}'

# do the bidding thing

puts 'Bidding has now ended. You are now playing for #{bid}'

# kitty?

# ---------------------------------
# GAME PLAY

puts 'It is your turn. Please choose a card to play'

puts player.hand

card = gets

# ---------------------------------
# SCORING
