extends Node

const SPEED: float = 500.0


func _enter_tree() -> void:
	set_multiplayer_authority(name.to_int())
	
