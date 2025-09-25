extends Control

func _on_spawn_player_pressed() -> void:
	NetworkHandler.start_client()
