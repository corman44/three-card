extends Node

const IP_ADDRESS: String = "192.168.1.28"
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
