require 'spec_helper'

describe Deck do
  describe 'can make a deck of cards' do
    it "can make a new 500 deck" do
      deck = Deck.new
      
      expect(deck.unallocated.length).to eq 43
      expect(deck.north.length).to eq 0
      expect(deck.east.length).to eq 0
      expect(deck.south.length).to eq 0
      expect(deck.west.length).to eq 0
      expect(deck.kitty.length).to eq 0
      expect(deck.discard.length).to eq 0

      # expect(puts deck.unallocated).to eq "*\nAH\nKH\nQH\nJH\nTH\n9H\n8H\n7H\n6H\n5H\n4H\nAD\nKD\nQD\nJD\nTD\n9D\n8D\n7D\n6D\n5D\n4D\nAC\nKC\nQC\nJC\nTC\n9C\n8C\n7C\n6C\n5C\nAS\nKS\nQS\nJS\nTS\n9S\n8S\n7S\n6S\n5S\n"    

    end

    it "can deal out the cards" do
      deck = Deck.new
      deck.shuffle
      deck.deal

      expect(deck.unallocated.length).to eq 0
      expect(deck.north.length).to eq 10
      expect(deck.east.length).to eq 10
      expect(deck.south.length).to eq 10
      expect(deck.west.length).to eq 10
      expect(deck.kitty.length).to eq 3
      expect(deck.discard.length).to eq 0      
    end
  end

end
