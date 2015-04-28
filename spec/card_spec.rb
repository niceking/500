require 'spec_helper'

describe Card do
  describe "can make new card" do
    it "can make regular card" do
      card = Card.new "4H"
      expect card.value == "4"
      expect card.suit == "Hearts"
    end
  end

end
