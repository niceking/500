require File.expand_path '../player', __FILE__

puts "Hi welcome to 500"

deck = Deck.new
deck.deal

player = Player.new(deck.north)

puts "Here is your hand"

puts player.hand

puts "What is your bid?"

bid = gets

puts "You have bid #{bid}"

