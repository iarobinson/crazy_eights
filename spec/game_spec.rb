require 'game'
require 'card'

describe Game do
  describe "::all_cards" do
    subject(:all_cards) { Game.all_cards }

    it "starts with a count of 52" do
      expect(all_cards.count).to eq(52)
    end

    it "returns all cards without duplicates" do
      deduped_cards = all_cards
        .map { |card| [card.suit, card.value] }
        .uniq
        .count
      expect(deduped_cards).to eq(52)
    end
  end

  describe "#shuffle" do
    it "shuffles deck" do
      expect(deck).to_not eq(deck.shuffle)
    end


  end
end
