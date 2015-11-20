require File.expand_path '../values', __FILE__

class Card
  attr_accessor :suit, :value, :joker

  def initialize(card_string)
    if card_string == '*'
      @value = Values.to_value('Joker')
      @suit = Values.to_suit('Joker')
      @joker = true
    # TODO: reject card strings that are invalid
    else
      @value = Values.to_value(card_string[0])
      @suit = Values.to_suit(card_string[1])
      @joker = false
    end
  end

  def joker?
    joker
  end

  def >(other)
    if @suit != other.suit
      puts 'cannot compare cards of different suits'
      return nil
    elsif @value > other.value
      return true
    elsif @value < other.value
      return false
    else
      puts 'Error! Are cards the same, or one a joker?'
      return nil
    end
  end
end
