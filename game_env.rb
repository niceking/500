require File.expand_path '../player', __FILE__
require File.expand_path '../bid', __FILE__
require File.expand_path '../bidding_manager', __FILE__

# ---------------------------------
# SETUP

puts 'Hi welcome to 500'

deck = Deck.new
deck.deal

rose = Player.new(dealt_hand: deck.north, name: 'North', position: :north)
jared = Player.new(dealt_hand: deck.east, name: 'East', position: :east)
simon = Player.new(dealt_hand: deck.south, name: 'South', position: :south)
tim = Player.new(dealt_hand: deck.west, name: 'West', position: :west)

puts 'Here is your hand'

# make the hand look prettier
puts rose.hand
# puts jared.hand
# puts simon.hand
# puts tim.hand

# ---------------------------------
# BIDDING

bm = BiddingManager.new(starting_player: rose,
                        other_players: [jared, tim, simon])

bm.do_bidding

puts "Bidding has now ended. You are now playing for #{bm.winning_bid}, made by #{bm.winning_bidder.name}"

# kitty?

# ---------------------------------
# GAME PLAY


# ---------------------------------
# SCORING
