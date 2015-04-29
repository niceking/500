
require File.expand_path '../deck', __FILE__

class Player

  attr_accessor :hand

  def initialize dealt_hand
    @hand = {"Hearts" => [], "Diamonds" => [], "Clubs" => [], "Spades" => [], "Joker" => []}
    sort_cards_by_suit_and_value dealt_hand
  end

  def sort_cards_by_suit_and_value dealt_hand

    dealt_hand.each do |card|
      @hand[card.suit].push(card.value)
    end

    @hand.map do |suit, values|
      values.sort!
    end
  end

end 
