class Card

  CARD_STR_TO_SUIT = {"H" => "Hearts", 
                      "D" => "Diamonds",
                      "S" => "Spades",
                      "C" => "Clubs",
                      "Joker" => "Joker"}

  CARD_STR_TO_VALUE = {"Joker" => "Joker",
                        "A" => 14,
                        "K" => 13,
                        "Q" => 12,
                        "J" => 11,
                        "T" => 10,
                        "9" => 9,
                        "8" => 8,
                        "7" => 7,
                        "6" => 6,
                        "5" => 5,
                        "4" => 4}

  attr_accessor :suit, :value 

  def initialize card_string
    if card_string == "*"
      @value = CARD_STR_TO_VALUE["Joker"]
      @suit = CARD_STR_TO_SUIT["Joker"]
      @joker = true
    #todo reject card strings that are invalid
    else
      @value = CARD_STR_TO_VALUE[card_string[0]]
      @suit = CARD_STR_TO_SUIT[card_string[1]]
      @joker = false
    end
  end

  def is_joker?
    return @joker
  end

  def to_s
    if @joker
      return "*"
    else
      return "#{CARD_STR_TO_VALUE.key(@value)}#{CARD_STR_TO_SUIT.key(@suit)}"
    end 
  end

  def > other_card
    if @suit != other_card.suit
      puts "cannot compare cards of different suits"
      return nil
    elsif @value > other_card.value
      return true
    elsif @value < other_card.value
      return false
    else
      puts "Error! Are cards the same, or one a joker?"
      return nil
    end
  end



end
