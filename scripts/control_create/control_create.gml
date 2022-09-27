function control_create(){
	randomise()
	window_set_size(1920, 1080)
	boards_init()
	cards_init()
	current_board = 0
	current_card = -1
	set_board(current_board)
	orientation = 0
	up_t = 0
	down_t = 0
	left_t = 0
	right_t = 0
	pgup_t = 0
	pgdn_t = 0
	role = -1
	socket = -1
	server_socket = -1
	board_to_set = -1
	connected = ""
	server_ip = "127.0.0.1"
	server_name = "Server"
	server_id = string(random(114514))
	server_broadcast_buffer = buffer_create(0, buffer_grow, 1)
	buffer_write_byte(10, server_broadcast_buffer)
	buffer_write_string_int(server_id, server_broadcast_buffer)
	buffer_write_string_int(server_name, server_broadcast_buffer)
	ping_buffer = buffer_create(0, buffer_grow, 1)
	buffer_write_byte(100, ping_buffer)
	broadcast_timer = current_time
	found_servers = []
	serverlist_select = 0
	server_port = "11451"
	listen_socket = -1
	listen_create_timer = current_time
	connect_ip = ""
	connect_port = server_port
	ping_timer = current_time
	ping_out_timer = current_time
	placed = 0
	curs = cr_default
	holding_x = -1
	holding_y = -1
	holding_index = -1
	holding_orientation = -1
	holding_special = -1
	net_placed = 0
	net_x = -1
	net_y = -1
	net_index = -1
	net_orientation = -1
	net_special = -1
	special_meter_total_self = 0
	special_meter_used_self = 0
	specials_self = []
	turf_self = 0
	special_meter_total_opponent = 0
	special_meter_used_opponent = 0
	specials_opponent = []
	turf_opponent = 0
	special_on = 0
	skip_on = 0
	skips_self = 0
	skips_opponent = 0
	gamepad_device = -1
	debug = 0
	screen = screen_main
	main_menu_select = 0
	main_menu_pressed = 0
	training = 0
	initial_deck = []
	deck_randomize()
	current_deck = []
	array_copy(current_deck, 0, initial_deck, 0, array_length(initial_deck))
	log (current_deck)
	current_hand = []
	hand_select = 0
	turns = 0
	game_ended = 0
	globalvar text_focus;
	globalvar text_select, text_exists, text_str, text_start, text_line, text_line_wrap, text_line_single, text_lines;
	globalvar text_sline, text_spos, text_eline, text_epos, text_cline, text_cpos, text_mline, text_mpos;
	globalvar text_click, text_marker, text_key_delay, text_lastwidth, text_laststr, text_lastfocus, text_mouseover, text_chars;
	text_select = -1
	text_exists[10000] = 0
	text_click = current_time
	text_marker = 0
	text_key_delay[7] = 0
	text_lastfocus = -1
	text_mouseover = []
	text_focus = -1
	gp_num = gamepad_get_device_count()
	kb_btn_up = vk_up
	kb_btn_down = vk_down
	kb_btn_left = vk_left
	kb_btn_right = vk_right
	kb_btn_reset = ord("R")
	kb_btn_nextcard = vk_pagedown
	kb_btn_prevcard = vk_pageup
	kb_btn_rturn = vk_rshift
	kb_btn_lturn = vk_rcontrol
	kb_btn_nextboard = vk_end
	kb_btn_prevboard = vk_home
	kb_btn_confirm = vk_enter
	kb_btn_back = vk_escape
	kb_btn_special = vk_space
	kb_btn_skip = vk_lshift
	gp_btn_up = gp_padu
	gp_btn_down = gp_padd
	gp_btn_left = gp_padl
	gp_btn_right = gp_padr
	gp_btn_reset = gp_select
	gp_btn_nextcard = gp_shoulderr
	gp_btn_prevcard = gp_shoulderl
	gp_btn_rturn = gp_face4
	gp_btn_lturn = gp_face3
	gp_btn_nextboard = gp_shoulderrb
	gp_btn_prevboard = gp_shoulderlb
	gp_btn_confirm = gp_face2
	gp_btn_back = gp_face1
	gp_btn_special = gp_stickr
	gp_btn_skip = gp_stickl
	for (var i = 0; i < gp_num; i++) {
	    if gamepad_is_connected(i) {
	        gamepad_device = i
			break
	    }
	}
}