require 'spec_helper'

describe Card do
  describe "can make new card" do
    it "can make regular card" do
      card = Card.new "4H"
      expect(card.value).to eq("4")
      expect(card.suit).to eq("H")
      expect(card.is_joker?).to eq(false)
    end

    it "can make a joker" do
      card = Card.new "*"
      expect(card.value).to eq("Joker")
      expect(card.suit).to eq("Joker")
      expect(card.is_joker?).to eq(true)
    end

    it "can print a string of itself" do
      card = Card.new "JH"
      expect(card.to_s).to eq ("JH")
    end

  end

end
