require File.expand_path '../deck', __FILE__
require File.expand_path '../bid', __FILE__

class Player
  attr_accessor :hand, :name, :bid, :position

  POSITIONS = { north: 1,
                east:  2,
                south: 3,
                west:  4 }

  def initialize(dealt_hand:, name: 'Anonymous', position:)
    @name = name
    @hand = { hearts: [],
              diamonds: [],
              clubs: [],
              spades: [],
              joker: [] }
    sort_cards_by_suit_and_value(dealt_hand)
    @bid = Bid.new(bid: nil)
    @position = position
  end

  def make_bid
    puts hand
    puts "#{name}, what is your bid?"
    bid = gets
    @bid = Bid.new(bid: bid)
  end

  def position
    POSITIONS(position)
  end

  # pull hand into its object?
  def sort_cards_by_suit_and_value(dealt_hand)
    dealt_hand.each do |card|
      @hand[card.suit].push(card.value)
    end

    @hand.map do |_suit, values|
      values.sort!
    end
  end
end
