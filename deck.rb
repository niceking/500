require File.expand_path '../card', __FILE__

class Deck

  FIVE_HUNDRED_DECK = ["*", 
              "AH", "KH", "QH", "JH", "TH", "9H", "8H", "7H", "6H", "5H", "4H", 
              "AD", "KD", "QD", "JD", "TD", "9D", "8D", "7D", "6D", "5D", "4D", 
              "AC", "KC", "QC", "JC", "TC", "9C", "8C", "7C", "6C", "5C",  
              "AS", "KS", "QS", "JS", "TS", "9S", "8S", "7S", "6S", "5S" 
            ]

  attr_accessor :unallocated, :north, :east, :south, :west, :discard, :kitty


  def initialize
    @unallocated, @north, @east, @south, @west, @discard, @kitty = Array.new(7) { [] }

    FIVE_HUNDRED_DECK.each do |card|
      @unallocated.push(Card.new(card))
    end

    # puts @unallocated
  end

end 
