class BiddingManager
  attr_accessor :winning_bid, :winning_bidder

  def initialize(starting_player:, other_players:)
    @winning_bid = nil
    @winning_bidder = nil
    @players = [starting_player].push(other_players)
    @starting_player = starting_player
  end

  def do_bidding
    initial_bid = @starting_player.make_bid
    current_bidder = @starting_player
    next_bid = find_next_bidder(current_bidder).make_bid

    @winning_bid = next_bid
    @winning_bidder = @starting_player
  end

  def winning_bid
    @winning_bidder.bid
  end

  private

  def find_next_bidder(current_bidder)
    next_bidder_position = Position.next_position(current_bidder.position)
    @players.each do |player|
      return player if player.position == next_bidder_position
    end
  end
end
