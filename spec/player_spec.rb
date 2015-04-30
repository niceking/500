require 'spec_helper'

describe Player do
  describe "can organise their cards" do
    it "sorts cards correctly by suit and value" do
      cards = []
      cards.push(Card.new "7S")
      cards.push(Card.new "*")      
      cards.push(Card.new "8C") 
      cards.push(Card.new "JH") 
      cards.push(Card.new "5H") 
      cards.push(Card.new "6S") 
      cards.push(Card.new "AD") 
      cards.push(Card.new "4D") 
      cards.push(Card.new "9S") 
      cards.push(Card.new "KH")

      sorted_cards = {"Hearts" => [5, 11, 13], 
                       "Diamonds" => [4, 14], 
                       "Clubs" => [8], 
                       "Spades" => [6, 7, 9], 
                       "Joker" => ["Joker"]}


      player = Player.new(cards)

      expect(player.hand).to eq sorted_cards
    end
  end

  describe 'can play cards' do
    it "can play a card that is in their hand" do
      player = FactoryGirl.create(:player)

      played_card = player.play "4D"
    end
  end
end
