require 'spec_helper'

describe Bid do
  let(:player) { double('Player', name: 'Test') }
  context 'can turn a string input to a bid' do
    it 'can make a bid for 6 - 9 tricks for a suit' do
      bid = Bid.new(bid: '6H')
      expect(bid.num_tricks).to eq 6
      expect(bid.trump_suit).to eq :hearts
    end

    it 'can make a bid for 10 tricks for a suit' do
      bid = Bid.new(bid: '10C')
      expect(bid.num_tricks).to eq 10
      expect(bid.trump_suit).to eq :clubs
    end

    it 'can make a bid of no trumps' do
      bid = Bid.new(bid: '8N')
      expect(bid.num_tricks).to eq 8
      expect(bid.trump_suit).to eq :no_trumps
    end

    it 'raises errors for non numeric tricks bid' do
      expect do
        Bid.new(bid: 'TC')
      end.to raise_error BidError::InvalidTrickNumber
    end

    it 'rejects bids for less than 6 or more than 10 tricks' do
      expect do
        Bid.new(bid: '5H')
      end.to raise_error BidError::InvalidTrickNumber
    end

    it '#to_s' do
      expect(Bid.new(bid: '7D').to_s).to eq '7 diamonds'
    end
  end
end
