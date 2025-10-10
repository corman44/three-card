extends Node2D

var deck: Array[Card]
var pile: Array[Card]

func _ready() -> void:
	# Setup Deck of Cards for global usage
	#for suit in [Card.Suit.Heart, Card.Suit.Diamond, Card.Suit.Club, Card.Suit.Spade]:
		#for idx in range(1,14):
			#deck.append(Card.new(suit, idx))
	#deck.shuffle()
	
	deck.append(Card.new(Card.Suit.Heart, 1))
	# Testing Card Functions
	#print("cards in deck: ", deck.size())
	#var first = deal_card()
	#var second = deal_card()
	#var third = deal_card()
	#print("First Card: ", first.as_string())
	#print("Second Card: ", second.as_string())
	#print("Third Card: ", third.as_string())
	pass

func shuffle_cards() -> void:
	deck.shuffle()
	#for card in deck:
		#print(card.as_string())
	pass

func deal_card() -> Card:
	if deck.size() > 0:
		return deck.pop_back()
	else:
		# TODO error handling needed here
		return Card.new(Card.Suit.Heart, 0)
