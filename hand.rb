
require File.expand_path '../card', __FILE__

class Hand

  attr_accessor :hand
  
  DECK = ["*", 
          "AH", "KH", "QH", "JH", "TH", "9H", "8H", "7H", "6H", "5H", "4H", 
          "AD", "KD", "QD", "JD", "TD", "9D", "8D", "7D", "6D", "5D", "4D", 
          "AC", "KC", "QC", "JC", "TC", "9C", "8C", "7C", "6C", "5C",  
          "AS", "KS", "QS", "JS", "TS", "9S", "8S", "7S", "6S", "5S" 
        ]

  def initialize
    @hand = []
    self.generate_hand
  end

  def generate_hand
    dealer = Random.new

    while (@hand.size < 10) do
      card = Card.new(DECK[dealer.rand(43)])
      @hand.push(card) unless @hand.include?(card)
    end

    # self.sort_hand_by_suit
  end

  def sort_hand_by_suit
    hearts, diamonds, clubs, spades = Array.new(4) { [] }

    @hand.each do |card|
      if card.suit "H"
        hearts.push(card)
      elsif card.suit "D"
        diamonds.push(card)
      elsif card.suit "C"
        clubs.push(card)
      elsif card.suit "S"
        spades.push(card)
      end
    end 

    puts "Here is your sorted hand"
    puts hearts
    puts diamonds
    puts clubs
    puts spades

  end

  def sort_hand_by_size cards
    cards.each do |card|

    end
  end

end 
