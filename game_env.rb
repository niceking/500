require File.expand_path '../hand', __FILE__

puts "Hi welcome to 500"

myHand = Hand.new

puts "Here is your hand"

puts myHand.hand

puts "What is your bid?"

bid = gets

puts "You have bid #{bid}"

