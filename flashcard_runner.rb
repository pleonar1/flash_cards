require "./lib/card"
require "./lib/deck"
require "./lib/turn"
require "./lib/round"

card_1 = Card.new("What is the capital of Alaska?",
                  "Juneau",
                  :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?",
                  "Mars",
                  :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?",
                  "North north west",
                  :STEM)
card_4 = Card.new("What is the capital of Georgia?",
                  "Atlanta",
                  :Geography)
card_5 = Card.new("What is the capital of New York?",
                  "Albany",
                  :Geography)

cards = [card_1, card_2, card_3, card_4, card_5]
deck  = Deck.new(cards)
round = Round.new(deck)

round.start
