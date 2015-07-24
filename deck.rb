require File.expand_path '../card', __FILE__

class Deck
  FIVE_HUNDRED_DECK = ['*',
              'AH', 'KH', 'QH', 'JH', 'TH', '9H', '8H', '7H', '6H', '5H', '4H',
              'AD', 'KD', 'QD', 'JD', 'TD', '9D', '8D', '7D', '6D', '5D', '4D',
              'AC', 'KC', 'QC', 'JC', 'TC', '9C', '8C', '7C', '6C', '5C',
              'AS', 'KS', 'QS', 'JS', 'TS', '9S', '8S', '7S', '6S', '5S'
            ]

  attr_accessor :unallocated, :north, :east, :south, :west, :discard, :kitty

  def initialize
    setup
  end

  def reset
    setup
  end

  def shuffle
    if self.is_deck_dealt?
      puts 'Error deck has cards missing'
      return false
    else
      @unallocated = @unallocated.shuffle
    end
  end

  def deal
    if self.is_deck_dealt?
      puts 'Error deck has cards missing'
      return false
    else
      # dealing in the traditonal 500 manner
      @north += @unallocated.pop(3)
      @east += @unallocated.pop(3)
      @south += @unallocated.pop(3)
      @west += @unallocated.pop(3)
      @kitty += @unallocated.pop(1)

      @north += @unallocated.pop(4)
      @east += @unallocated.pop(4)
      @south += @unallocated.pop(4)
      @west += @unallocated.pop(4)
      @kitty += @unallocated.pop(1)

      @north += @unallocated.pop(3)
      @east += @unallocated.pop(3)
      @south += @unallocated.pop(3)
      @west += @unallocated.pop(3)
      @kitty += @unallocated.pop(1)
    end
  end

  def is_deck_dealt?
    if (@unallocated.length == 43) && (@north.length == 0) && (@east.length == 0) && (@south.length == 0) && (@west.length == 0) && (@kitty.length == 0) && (@discard.length == 0)
      return false
    else
      return true
    end
  end

  private

    def setup
      @unallocated, @north, @east, @south, @west, @discard, @kitty = Array.new(7) { [] }

      FIVE_HUNDRED_DECK.each do |card|
        @unallocated.push(Card.new(card))
      end
      self.shuffle
    end
end