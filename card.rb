require File.expand_path '../suit', __FILE__

class Card
  CARD_STR_TO_VALUE = { 'Joker' => 17,
                        'A' => 14,
                        'K' => 13,
                        'Q' => 12,
                        'J' => 11,
                        'T' => 10,
                        '9' => 9,
                        '8' => 8,
                        '7' => 7,
                        '6' => 6,
                        '5' => 5,
                        '4' => 4 }

  TRUMP_CARD_STR_TO_VALUE = { 'Joker' => 17,
                              'J' => 16,
                              'j' => 15,
                              'A' => 14,
                              'K' => 13,
                              'Q' => 12,
                              'T' => 10,
                              '9' => 9,
                              '8' => 8,
                              '7' => 7,
                              '6' => 6,
                              '5' => 5,
                              '4' => 4 }

  attr_accessor :suit, :value, :joker

  def initialize(card_string)
    if card_string == '*'
      @value = CARD_STR_TO_VALUE.fetch('Joker')
      @suit = Suit.new('Joker')
      @joker = true
    # TODO: reject card strings that are invalid
    else
      @value = CARD_STR_TO_VALUE.fetch(card_string[0])
      @suit = Suit.new(card_string[1])
      @joker = false
    end
  end

  def joker?
    joker
  end
end
