function disconnect(){
	connected = ""
	socket = -1
	set_board(current_board)
	screen = screen_main
	main_menu_select = 0
	if (server_socket >= 0) network_destroy(server_socket)
	server_socket = -1
	if (socket >= 0) network_destroy(socket)
	socket = -1
	role = -1
	placed = 0
	turns = 0
	skips_self = 0
	skips_opponent = 0
	current_deck = []
	array_copy(current_deck, 0, initial_deck, 0, array_length(initial_deck))
	current_hand = []
	game_ended = 0
	hand_select = 0
	orientation = 0
}