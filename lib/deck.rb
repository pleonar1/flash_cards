require './lib/card'
require './lib/turn'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def cards_in_category(category)
    cic_array = []
    @cards.select do |card|
      if card.category == category
        cic_array << card
      end
    end
  end
end
