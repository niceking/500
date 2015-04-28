class Card
  #todo map value to numerical value
  SUIT = ["Hearts", "Diamonds", "Spades", "Clubs"]
  VALUE = ["A", "K", "Q", "J", "T", 9, 8, 7, 6, 5, 4]

  attr_accessor :suit, :value 

  def initialize card_string
    if card_string == "*"
      @value = "Joker"
      @suit = "Joker"
      @joker = true
    #todo reject card strings that are invalid
    else
      @value = card_string[0]
      @suit = card_string[1]
      @joker = false
    end
  end

  def card_string_to_suit cs 
    if cs == "H"
      return "Hearts"
    elsif cs == "D"
      return "Diamonds"
    elsif cs == "C"
      return "Clubs"
    elsif cs == "S"
      return "Spades"
    end
  end

  def is_joker?
    return @joker
  end

  def to_s
    if @joker
      return "*"
    else
      return "#{@value}#{@suit}"
    end 
  end



end
