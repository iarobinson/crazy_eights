require_relative 'card'

class Game
  def self.all_cards
    deck = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck
  end

  def initialize(deck = Game.all_cards)
    @deck = deck.shuffle
  end

  def count
    @deck.length
  end

  def render
    p "#{@deck[-1]} <= last card"
    p "#{@deck.count} <= cards left in game"
  end


end


pow = Game.new
pow.render
