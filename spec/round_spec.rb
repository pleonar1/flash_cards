require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe "round" do
  before(:each) do
    @card_1 = Card.new("What is the capital of Alaska?",
                       "Juneau",
                       :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?",
                       "Mars",
                       :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?",
                       "North north west",
                       :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck)
  end

  it "exists" do
    expect(@round).to be_a Round
  end

  it "has attributes" do
    expect(@round.deck).to be_a Deck
    expect(@round.deck).to eq(@deck)
  end
end
