require File.expand_path '../errors', __FILE__
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

  def to_s
    "#{@num_tricks} #{@trump_suit}"
  end

  private

  def parse_bid(bid)
    bid = bid.split("")
    @num_tricks = parse_num_tricks(bid[0])
    @trump_suit = parse_suit(bid[1])
  end

  def parse_num_tricks(num)
    n = Integer(num)
    fail BidError::InvalidTrickNumber if n > 10 || n < 6
    n
  rescue ArgumentError
    raise BidError::InvalidTrickNumber
  end

  def parse_suit(suit)
    Values.to_suit(suit)
  rescue KeyError
    raise BidError::InvalidSuit
  end
end
