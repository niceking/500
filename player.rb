require File.expand_path '../deck', __FILE__
require File.expand_path '../bid', __FILE__

class Player
  attr_accessor :hand, :name, :bid, :position

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

  def make_bid(current_bid = nil)
    if current_bid.nil?
      puts "#{name}, what is your bid?"
      bid = gets
      @bid = Bid.new(bid: bid)
    else
      puts "The current bid is #{current_bid}."
      puts "#{name}, what is your bid?"
      bid = gets
      @bid.update_bid(bid)
      while @bid < current_bid
        puts "#{@bid} is not higher than the current bid of #{current_bid}."
        bid = gets
        @bid.update_bid(bid)
      end
    end
  end

  # pull hand into its object?
  def sort_cards_by_suit_and_value(dealt_hand)
    dealt_hand.each do |card|
      @hand[card.suit.name].push(card.value)
    end

    @hand.map do |_suit, values|
      values.sort!
    end
  end
end
