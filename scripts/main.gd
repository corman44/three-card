extends Node

func _ready() -> void:
	if OS.has_feature("server"):
		NetworkHandler.start_server()
	pass
