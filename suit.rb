class Suit
  CARD_STR_TO_SUIT = { 'H' => :hearts,
                       'D' => :diamonds,
                       'S' => :spades,
                       'C' => :clubs,
                       'Joker' => :joker }

  CARD_SUIT_TO_VALUE = { joker: 5,
                         hearts: 4,
                         diamonds: 3,
                         clubs: 2,
                         spades: 1 }

  attr_reader :name

  def initialize(card_str)
    @name = CARD_STR_TO_SUIT.fetch(card_str)
    @value = CARD_SUIT_TO_VALUE.fetch(@name)
  end

  def <(other)
    @value < CARD_SUIT_TO_VALUE.fetch(other.name)
  end
end
