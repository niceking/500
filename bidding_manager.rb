
require File.expand_path '../position', __FILE__

class BiddingManager
  attr_accessor :winning_bid, :winning_bidder

  def initialize(starting_player:, other_players:)
    @winning_bid = nil
    @winning_bidder = nil
    @active_players = [starting_player].push(*other_players)
    @passed_players = []
    @starting_player = starting_player
  end

  def do_bidding
    initial_bid = @starting_player.make_bid

    current_bidder = @starting_player
    current_bid = initial_bid

    next_bid = find_next_bidder(current_bidder).make_bid(current_bid)

    @winning_bid = next_bid
    @winning_bidder = @starting_player
  end

  def winning_bid
    @winning_bidder.bid
  end

  private

  def find_next_bidder(current_bidder)
    next_bidder_position = Position.next_position(current_bidder.position)
    # binding.pry
    @active_players.each do |player|
      return player if player.position == next_bidder_position
    end
  end
end
