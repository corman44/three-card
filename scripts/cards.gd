extends TileMapLayer

class_name Card

var id: int # 1->52 (direct correlation to exact card (easier for converting to and from Suit/Rank to id)
var suit: Suit
var rank: int #  1-13 (Ace = 1, Jack = 11, Queen = 12, King = 13)
var sprite: Sprite2D
# TODO add in card UI
# TODO add in card clicking & dragging behavior
# TODO add in card valid positioning?

enum Suit { Heart=0, Diamond=1, Club=2, Spade=3 }

func _init(_suit: Suit, _rank: int):
	suit = _suit
	rank = _rank
	id = rank + 13 * suit
	
	# setup sprite for this card
	tile_set
	
	
	var data = null
	if data:
		var region = data.get_texture_region()
	
		#sprite.texture = texture
		sprite.region_enabled = true
		sprite.region_rect = region
		
		sprite.position = Vector2(100,100)
	else:
		print("No cell data found...")

func as_string() -> String:
	var rank_name = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
	return "%s of %s (id=%d)" % [rank_name[rank-1], Suit.keys()[suit], id]

func get_id() -> int:
	return id
