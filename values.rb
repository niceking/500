module Values
  CARD_STR_TO_SUIT = { 'H' => :hearts,
                       'D' => :diamonds,
                       'S' => :spades,
                       'C' => :clubs,
                       'N' => :no_trumps,
                       'Joker' => :joker }

  CARD_STR_TO_VALUE = { 'Joker' => :joker,
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

  def self.to_suit(str)
    CARD_STR_TO_SUIT.fetch(str)
  end

  def self.to_value(str)
    CARD_STR_TO_VALUE.fetch(str)
  end
end

class Position
  def self.next_position(current_position)
    current_position == 4 ? 1 : current_position + 1
  end
end
