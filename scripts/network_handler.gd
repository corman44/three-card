extends Node

#const IP_ADDRESS: String = "localhost" # for local testing
#const IP_ADDRESS: String = "10.0.0.28" # for RPi local Server
const IP_ADDRESS: String = "98.246.2.107 " # for RPi Remote Server
const PORT: int = 33312

const MAX_PLAYERS: int = 4

var peer = ENetMultiplayerPeer

func start_server() -> void:
	peer = ENetMultiplayerPeer.new()
	peer.create_server(PORT, MAX_PLAYERS)
	multiplayer.multiplayer_peer = peer
	print("Server Started!")
	pass
	
func start_client() -> void:
	peer = ENetMultiplayerPeer.new()
	peer.create_client(IP_ADDRESS, PORT)
	multiplayer.multiplayer_peer = peer
	print("Client Started!")
	pass
