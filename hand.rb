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
    self.sort_hand
  end

  def generate_hand
    dealer = Random.new

    while (@hand.size < 10) do
      card = DECK[dealer.rand(10)]
      @hand.push(card) unless @hand.include?(card)
    end
  end

  def sort_hand
    hearts, diamonds, clubs, spades = []

    @hand.each do |card|
      if card.include? "H"
        @hearts.push(card)
      elsif card.include? "D"
        @hearts.push(card)
      elsif card.include? "C"
        @hearts.push(card)
      elsif card.include? "S"
        @hearts.push(card)
      end

    end 
  end

end 
