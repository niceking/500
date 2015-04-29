require 'spec_helper'

describe Card do
  describe "can make new card" do
    it "can make regular card" do
      card = Card.new "4H"
      expect(card.value).to eq 4
      expect(card.suit).to eq "Hearts"
      expect(card.is_joker?).to eq(false)
    end

    it "can make a joker" do
      card = Card.new "*"
      expect(card.value).to eq "Joker"
      expect(card.suit).to eq "Joker"
      expect(card.is_joker?).to eq(true)
    end

    it "can print a string of itself" do
      card = Card.new "JH"
      expect(card.to_s).to eq ("JH")
    end
  end

  describe "can compare cards" do
    it "can correctly compare two cards of the same suit" do
      five = Card.new "5S"
      jack = Card.new "JS"
      ace = Card.new "AS"

      expect(five > jack).to eq (false)
      expect(five > ace).to eq (false)
      expect(ace > jack).to eq (true)
      expect(jack > five).to eq (true)
    end

    it "return nil if cards are different suits" do
      h = Card.new "7H"
      d = Card.new "7D"
      s = Card.new "7S"
      c = Card.new "7C"

      expect(c > d).to eq nil
      expect(h > s).to eq nil
      expect(s > c).to eq nil
      expect(d > h).to eq nil

    end
  end

end
