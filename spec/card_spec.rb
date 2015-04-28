require 'spec_helper'

describe Card do
  describe "can make new card" do
    it "can make regular card" do
      card = Card.new "4H"
      expect(card.value).to eq("4")
      expect(card.suit).to eq("H")
    end
  end

end
