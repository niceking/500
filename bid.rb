require 'pry'

class Bid
  attr_reader :num_tricks, :trump_suit

  def initialize(bid:)
    @num_tricks = nil
    @trump_suit = nil
    update_bid(bid) unless bid.nil?
  end

  def update_bid(bid)
    parse_bid(bid)
  end

  def <(other_bid)
    if @num_tricks < other_bid.num_tricks
      true
    elsif (@num_tricks == other_bid.num_tricks) && (@trump_suit < other_bid.trump_suit)
      true
    else
      false
    end
  end

  def to_s
    "#{@num_tricks} #{@trump_suit.name}"
  end

  private

  def parse_bid(bid)
    bid = bid.split("")
    @num_tricks = parse_num_tricks(bid[0])
    @trump_suit = Suit.new(bid[1])
  end

  def parse_num_tricks(num)
    Integer(num)
  end
end
