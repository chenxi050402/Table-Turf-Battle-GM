function control_draw(){
	curs = cr_default
	draw_clear(c_dkgray)
	draw_sprite_tiled(spr_bg1, 0, 0, 0)
	if (screen = screen_main) {
		draw_set_color(c_white)
		draw_set_font(fnt_gambit_big)
		draw_text(100, 100, "Main Menu")
		main_menu_pressed = 0
		if ((keyboard_check_pressed(kb_btn_right) || gamepad_button_check_pressed(gamepad_device, gp_btn_right))) {if (main_menu_select != 3) main_menu_select += 1}
		if ((keyboard_check_pressed(kb_btn_left) || gamepad_button_check_pressed(gamepad_device, gp_btn_left))) {if (main_menu_select != 0) main_menu_select -= 1}
		if ((keyboard_check(kb_btn_confirm) || gamepad_button_check(gamepad_device, gp_btn_confirm))) {main_menu_pressed = 1}
		if (draw_button_modesel(1920 / 2 - 343 - 10 - 343 - 20, 1080 / 2 - 240, 1, make_color_rgb(193, 13, 236), (main_menu_select = 0) + (main_menu_pressed) * (main_menu_select = 0), 1, "Local Play", make_color_rgb(46, 24, 45), 0) = 2) {screen = screen_joinroom}
		if (draw_button_modesel(1920 / 2 - 343 - 10, 1080 / 2 - 240, 1, make_color_rgb(161, 238, 14), (main_menu_select = 1) + (main_menu_pressed) * (main_menu_select = 1), 1, "Remote Play", make_color_rgb(2, 49, 0), 1) = 2) {screen = screen_joinserver}
		if (draw_button_modesel(1920 / 2 + 10, 1080 / 2 - 240, 1, make_color_rgb(231, 236, 76), (main_menu_select = 2) + (main_menu_pressed) * (main_menu_select = 2), 1, "Training", make_color_rgb(26, 39, 0), 2) = 2) {screen = screen_game; training = 1; current_card = 0; calculate_turf()}
		draw_button_modesel(1920 / 2 + 10 + 343 + 20, 1080 / 2 - 240, 1, make_color_rgb(148, 149, 145), (main_menu_select = 3) + (main_menu_pressed) * (main_menu_select = 3), 1, "Settings", make_color_rgb(20, 21, 17), 3)
		//draw_card_select(100, 200, 0, 20, 1, 1)
	} else if (screen = screen_joinroom) {
		var click = 0
		var createscale = 1
		draw_set_color(c_white)
		draw_set_font(fnt_gambit_big)
		draw_text(100, 100, "Local Play")
		if (draw_back_button()) {screen = screen_main; main_menu_select = 0; found_servers = []; network_destroy(listen_socket); listen_socket = -1}
		click = mouse_rectangle(1920 / 2 - 170, 100, 340, 100)
		if (click) click += mouse_check_button(mb_left)
		if (click && mouse_check_button_released(mb_left)) click = 3
		if (gamepad_button_check(gamepad_device, gp_btn_lturn)) click = 2
		if (gamepad_button_check_released(gamepad_device, gp_btn_lturn)) click = 3
		if (click = 2) createscale = 0.95
		draw_set_color(c_white)
		if (click) draw_roundrect_ext(1920 / 2 - (170 + 5) * createscale, 150 - (50 + 5) * createscale, 1920 / 2 + (170 + 5) * createscale, 150 + (50 + 5) * createscale, 60 * createscale, 60 * createscale, 1)
		draw_set_color(make_color_rgb(175, 80, 255))
		draw_roundrect_ext(1920 / 2 - 170 * createscale, 150 - 50 * createscale, 1920 / 2 + 170 * createscale, 150 + 50 * createscale, 50 * createscale, 50 * createscale, 0)
		draw_set_font(fnt_blitz_big)
		draw_sprite_ext(spr_abxy, 3, 1920 / 2 - ((string_width("Create Room") + 32 * 1.2 + 10) / 2) * createscale, 150 - (16 * 1.2) * createscale, 1.2 * createscale, 1.2 * createscale, 0, -1, 1)
		draw_set_color(c_white)
		draw_text_transformed(1920 / 2 - ((string_width("Create Room") + 32 * 1.2 + 10) / 2 - 32 * 1.2 - 10) * createscale, 150 - 33 * createscale, "Create Room", createscale, createscale, 0)
		if (click) curs = cr_handpoint
		if (current_time - listen_create_timer >= 1000 && listen_socket < 0) {listen_socket = network_create_socket_ext(network_socket_udp, 19198); listen_create_timer = current_time}
		if (click = 3) {screen = screen_createroom; server_socket = network_create_server(network_socket_tcp, server_port, 1); role = 0; found_servers = []; if (listen_socket >= 0) network_destroy(listen_socket); listen_socket = -1}
		for (var i = 0; i < array_length(found_servers); i++) {
			if (current_time - found_servers[i][4] >= 5000) array_delete(found_servers, i, 1)
		}
		draw_serverlist()
		if ((keyboard_check_pressed(kb_btn_down) || gamepad_button_check_pressed(gamepad_device, gp_btn_down))) {if (serverlist_select != array_length(found_servers) - 1) serverlist_select += 1}
		if ((keyboard_check_pressed(kb_btn_up) || gamepad_button_check_pressed(gamepad_device, gp_btn_up))) {if (serverlist_select != 0) serverlist_select -= 1}
		while (serverlist_select >= array_length(found_servers) && serverlist_select != 0) serverlist_select-- 
		if (connected != "") {game_start()}
	} else if (screen = screen_createroom) {
		draw_set_color(c_white)
		draw_set_font(fnt_gambit_big)
		draw_text(100, 100, "Waiting for opponent...")
		draw_set_font(fnt_blitz_big)
		draw_text(500, 300, "Server Name: " + server_name + ", Server ID: " + string(server_id))
		if (current_time - broadcast_timer >= 1000) {log("Sent " + string(network_send_broadcast(server_socket, 19198, server_broadcast_buffer, buffer_get_size(server_broadcast_buffer)))); broadcast_timer = current_time}
		if (draw_back_button()) {screen = screen_joinroom; if (server_socket >= 0) network_destroy(server_socket); server_socket = -1; if (socket >= 0) network_destroy(socket); socket = -1; role = -1; listen_socket = network_create_socket_ext(network_socket_udp, 19198)}
		if (connected != "") {game_start()}
	} else if (screen = screen_joinserver) {
		var click = 0
		var createscale = 1
		draw_set_color(c_white)
		draw_set_font(fnt_gambit_big)
		draw_text(100, 100, "Remote Play")
		if (draw_back_button()) {screen = screen_main; main_menu_select = 0}
		click = mouse_rectangle(1920 / 2 - 170, 100, 340, 100)
		if (click) click += mouse_check_button(mb_left)
		if (click && mouse_check_button_released(mb_left)) click = 3
		if (gamepad_button_check(gamepad_device, gp_btn_lturn)) click = 2
		if (gamepad_button_check_released(gamepad_device, gp_btn_lturn)) click = 3
		if (click = 2) createscale = 0.95
		draw_set_color(c_white)
		if (click) draw_roundrect_ext(1920 / 2 - (170 + 5) * createscale, 150 - (50 + 5) * createscale, 1920 / 2 + (170 + 5) * createscale, 150 + (50 + 5) * createscale, 60 * createscale, 60 * createscale, 1)
		draw_set_color(make_color_rgb(175, 80, 255))
		draw_roundrect_ext(1920 / 2 - 170 * createscale, 150 - 50 * createscale, 1920 / 2 + 170 * createscale, 150 + 50 * createscale, 50 * createscale, 50 * createscale, 0)
		draw_set_font(fnt_blitz_big)
		draw_sprite_ext(spr_abxy, 3, 1920 / 2 - ((string_width("Create Server") + 32 * 1.2 + 10) / 2) * createscale, 150 - (16 * 1.2) * createscale, 1.2 * createscale, 1.2 * createscale, 0, -1, 1)
		draw_set_color(c_white)
		draw_text_transformed(1920 / 2 - ((string_width("Create Server") + 32 * 1.2 + 10) / 2 - 32 * 1.2 - 10) * createscale, 150 - 33 * createscale, "Create Server", createscale, createscale, 0)
		if (click) curs = cr_handpoint
		if (click = 3) {screen = screen_createserver; server_socket = network_create_server(network_socket_tcp, server_port, 1); role = 0; found_servers = []; if (listen_socket >= 0) network_destroy(listen_socket); listen_socket = -1}
		draw_set_font(fnt_blitz_big)
		draw_text(1920 / 2 - 500, 300, "IP:")
		draw_set_font(fnt_blitz_med)
		connect_ip = draw_text_edit(0, "", 1920 / 2 - 500, 400, 1000, 80, 1, 0)
		draw_rectangle(1920 / 2 - 500, 400, 1920 / 2 + 500, 480, 1)
		draw_set_font(fnt_blitz_big)
		draw_text(1920 / 2 - 500, 500, "Port:")
		draw_set_font(fnt_blitz_med)
		connect_port = draw_text_edit(1, server_port, 1920 / 2 - 500, 600, 1000, 80, 1, 0)
		draw_rectangle(1920 / 2 - 500, 600, 1920 / 2 + 500, 680, 1)
		click = 0
		createscale = 1
		click = mouse_rectangle(1920 / 2 - 170, 100 + 700, 340, 100)
		if (click) click += mouse_check_button(mb_left)
		if (click && mouse_check_button_released(mb_left)) click = 3
		if (click = 2) createscale = 0.95
		draw_set_color(c_white)
		if (click) draw_roundrect_ext(1920 / 2 - (170 + 5) * createscale, 150 + 700 - (50 + 5) * createscale, 1920 / 2 + (170 + 5) * createscale, 150 + 700 + (50 + 5) * createscale, 60 * createscale, 60 * createscale, 1)
		draw_set_color(make_color_rgb(255, 109, 60))
		draw_roundrect_ext(1920 / 2 - 170 * createscale, 150 + 700 - 50 * createscale, 1920 / 2 + 170 * createscale, 150 + 700 + 50 * createscale, 50 * createscale, 50 * createscale, 0)
		draw_set_font(fnt_blitz_big)
		draw_set_color(c_white)
		draw_text_transformed(1920 / 2 - ((string_width("Connect")) / 2) * createscale, 150 + 700 - 33 * createscale, "Connect", createscale, createscale, 0)
		if (click) curs = cr_handpoint
		if (click = 3) {socket = network_create_socket(network_socket_tcp); if (network_connect_async(socket, connect_ip, connect_port) >= 0) connected = connect_ip + ":" + string(connect_port); role = 1}
		if (connected != "") {game_start()}
	} else if (screen = screen_createserver) {
		draw_set_color(c_white)
		draw_set_font(fnt_gambit_big)
		draw_text(100, 100, "Waiting for opponent...")
		draw_set_font(fnt_blitz_big)
		draw_text(500, 300, "Connect using this server's local or remote IP with port " + string(server_port))
		if (draw_back_button()) {screen = screen_joinserver; if (server_socket >= 0) network_destroy(server_socket); server_socket = -1; if (socket >= 0) network_destroy(socket); socket = -1; role = -1}
		if (connected != "") {game_start()}
	} else if (screen = screen_game) {
		if (special_on) {
			draw_set_alpha(0.5)
			draw_set_color(0)
			draw_rectangle(0, 0, 1920, 1080, 0)
			draw_set_alpha(1)
		}
		draw_board(current_board, 960, 540, c_gray)
		if (placed && net_placed) {
			if (holding_index = -1) skips_self++
			if (net_index = -1) skips_opponent++
			place_card_both(holding_x, holding_y, net_x, net_y, holding_index, net_index, holding_orientation, net_orientation)
			if (holding_special) special_meter_used_self += special_points[holding_index]
			placed = 0
			holding_x = -1
			holding_y = -1
			holding_index = -1
			holding_orientation = -1
			holding_special = 0
			if (net_special) special_meter_used_opponent += special_points[net_index]
			net_placed = 0
			net_x = -1
			net_y = -1
			net_index = -1
			net_orientation = -1
			net_special = 0
			if (array_length(current_deck) > 0) current_hand[hand_select] = hand_draw()
			hand_select = 0
			special_on = 0
			skip_on = 0
			orientation = 0
			if (current_board = 0) {
				placing_x = 5
				placing_y = 22
			} else if (current_board = 1) {
				placing_x = 4
				placing_y = 18
			} else if (current_board = 2) {
				placing_x = 10
				placing_y = 19
			} else if (current_board = 3) {
				placing_x = 4
				placing_y = 11
			} else if (current_board = 4) {
				placing_x = 4
				placing_y = 12
			} else if (current_board = 5) {
				placing_x = 9
				placing_y = 19
			} else if (current_board = 6) {
				placing_x = 4
				placing_y = 21
			} else if (current_board = 7) {
				placing_x = 3
				placing_y = 7
			}
			turns++
		}
		if (placed && current_card = -1 && holding_index != -1) {
			draw_card_placing(holding_index, holding_orientation)
		}
		if (turns = 12) {
			current_card = -1
			game_ended = 1
		}
		if (current_card != -1) {
			draw_place()
			if ((keyboard_check_pressed(kb_btn_up) || gamepad_button_check_pressed(gamepad_device, gp_btn_up)) && check_edge("up")) placing_y -= 1
			if (keyboard_check(kb_btn_up) || gamepad_button_check(gamepad_device, gp_btn_up)) up_t += 1
			if (up_t >= 30 && up_t mod 4 = 0 && check_edge("up")) placing_y -= 1
			if (keyboard_check_released(kb_btn_up) || gamepad_button_check_released(gamepad_device, gp_btn_up)) up_t = 0
			if ((keyboard_check_pressed(kb_btn_down) || gamepad_button_check_pressed(gamepad_device, gp_btn_down)) && check_edge("down")) placing_y += 1
			if (keyboard_check(kb_btn_down) || gamepad_button_check(gamepad_device, gp_btn_down)) down_t += 1
			if (down_t >= 30 && down_t mod 4 = 0 && check_edge("down")) placing_y += 1
			if (keyboard_check_released(kb_btn_down) || gamepad_button_check_released(gamepad_device, gp_btn_down)) down_t = 0
			if ((keyboard_check_pressed(kb_btn_left) || gamepad_button_check_pressed(gamepad_device, gp_btn_left)) && check_edge("left")) placing_x -= 1
			if (keyboard_check(kb_btn_left) || gamepad_button_check(gamepad_device, gp_btn_left)) left_t += 1
			if (left_t >= 30 && left_t mod 4 = 0 && check_edge("left")) placing_x -= 1
			if (keyboard_check_released(kb_btn_left) || gamepad_button_check_released(gamepad_device, gp_btn_left)) left_t = 0
			if ((keyboard_check_pressed(kb_btn_right) || gamepad_button_check_pressed(gamepad_device, gp_btn_right)) && check_edge("right")) placing_x += 1
			if (keyboard_check(kb_btn_right) || gamepad_button_check(gamepad_device, gp_btn_right)) right_t += 1
			if (right_t >= 30 && right_t mod 4 = 0 && check_edge("right")) placing_x += 1
			if (keyboard_check_released(kb_btn_right) || gamepad_button_check_released(gamepad_device, gp_btn_right)) right_t = 0
			if (keyboard_check_pressed(kb_btn_rturn) || gamepad_button_check_pressed(gamepad_device, gp_btn_rturn)) {if (orientation != 3) orientation += 1 else orientation = 0}
			if (keyboard_check_pressed(kb_btn_lturn) || gamepad_button_check_pressed(gamepad_device, gp_btn_lturn)) {if (orientation != 0) orientation -= 1 else orientation = 3}
		}
		if (training) {
			if (keyboard_check_pressed(kb_btn_reset) || gamepad_button_check_pressed(gamepad_device, gp_btn_reset)) {set_board(current_board)}
			if (keyboard_check_pressed(kb_btn_nextcard) || gamepad_button_check_pressed(gamepad_device, gp_btn_nextcard)) {if (current_card != array_length(cards) - 1) current_card += 1 else current_card = 0; orientation = 0; special_on = 0}
			if (keyboard_check(kb_btn_nextcard) || gamepad_button_check(gamepad_device, gp_btn_nextcard)) pgdn_t += 1
			if (pgdn_t >= 30 && pgdn_t mod 4 = 0) {if (current_card != array_length(cards) - 1) current_card += 1 else current_card = 0; orientation = 0; special_on = 0}
			if (keyboard_check_released(kb_btn_nextcard) || gamepad_button_check_released(gamepad_device, gp_btn_nextcard)) pgdn_t = 0
			if (keyboard_check_pressed(kb_btn_prevcard) || gamepad_button_check_pressed(gamepad_device, gp_btn_prevcard)) {if (current_card != 0) current_card -= 1 else current_card = array_length(cards) - 1; orientation = 0; special_on = 0}
			if (keyboard_check(kb_btn_prevcard) || gamepad_button_check(gamepad_device, gp_btn_prevcard)) pgup_t += 1
			if (pgup_t >= 30 && pgup_t mod 4 = 0) {if (current_card != 0) current_card -= 1 else current_card = array_length(cards) - 1; orientation = 0; special_on = 0}
			if (keyboard_check_released(kb_btn_prevcard) || gamepad_button_check_released(gamepad_device, gp_btn_prevcard)) pgup_t = 0
			if (keyboard_check_pressed(kb_btn_nextboard) || gamepad_button_check_pressed(gamepad_device, gp_btn_nextboard)) {if (current_board != 7) current_board += 1 else current_board = 0; set_board(current_board); show_debug_message(send_changeboard(current_board))}
			if (keyboard_check_pressed(kb_btn_prevboard) || gamepad_button_check_pressed(gamepad_device, gp_btn_prevboard)) {if (current_board != 0) current_board -= 1 else current_board = 7; set_board(current_board); show_debug_message(send_changeboard(current_board))}
		}
		if (!training) if (keyboard_check_pressed(kb_btn_back) || gamepad_button_check_pressed(gamepad_device, gp_btn_back)) current_card = -1
		if ((keyboard_check_pressed(kb_btn_special) || gamepad_button_check_pressed(gamepad_device, gp_btn_special)) && (current_card = -1 || special_points[current_card] <= special_meter_total_self - special_meter_used_self) && (!skip_on) && (!game_ended)) special_on = !special_on
		//if (keyboard_check_pressed(ord("S")) && socket = -1) {network_create_server(network_socket_tcp, server_port, 1); role = 0}
		//if (keyboard_check_pressed(ord("C")) && socket = -1) {socket = network_create_socket(network_socket_tcp); if (network_connect_async(socket, server_ip, server_port) >= 0) connected = server_ip + ":" + string(server_port); role = 1}
		if (current_card = -1 && !placed && !training && !game_ended) {
			if (keyboard_check_pressed(kb_btn_up) || gamepad_button_check_pressed(gamepad_device, gp_btn_up)) if (hand_select > 1) hand_select -= 2
			if (keyboard_check_pressed(kb_btn_down) || gamepad_button_check_pressed(gamepad_device, gp_btn_down)) if (hand_select <= 1) hand_select += 2
			if (keyboard_check_pressed(kb_btn_left) || gamepad_button_check_pressed(gamepad_device, gp_btn_left)) if (hand_select = 1 || hand_select = 3) hand_select -= 1
			if (keyboard_check_pressed(kb_btn_right) || gamepad_button_check_pressed(gamepad_device, gp_btn_right)) if (hand_select = 0 || hand_select = 2) hand_select += 1
			if ((keyboard_check_pressed(kb_btn_confirm) || gamepad_button_check_pressed(gamepad_device, gp_btn_confirm)) && (!special_on || special_points[current_hand[hand_select]] <= special_meter_total_self - special_meter_used_self)) {if (!skip_on) current_card = current_hand[hand_select] else {place_card_hold(-1, -1, -1, -1, 0)}}
			if ((keyboard_check_pressed(kb_btn_skip) || gamepad_button_check_pressed(gamepad_device, gp_btn_skip)) && (!special_on)) skip_on = !skip_on
		}
		if (training) draw_card(200, 500, 0, current_card, 0.7)
		if (skip_on) {
			draw_set_alpha(0.5)
			draw_set_color(0)
			draw_rectangle(0, 0, 1920, 1080, 0)
			draw_set_alpha(1)
		}
		if (!training) {
			draw_card_select(120, 200, 0, current_hand[0], 0.7, hand_select = 0)
			draw_card_select(360, 200, 0, current_hand[1], 0.7, hand_select = 1)
			draw_card_select(120, 520, 0, current_hand[2], 0.7, hand_select = 2)
			draw_card_select(360, 520, 0, current_hand[3], 0.7, hand_select = 3)
		}
		draw_set_font(fnt_gambit)
		draw_set_color(c_white)
		draw_text(0, 0, "Arrow key or dpad to move")
		draw_text(0, 20, "Right ctrl and shift or X and Y to rotate")
		draw_text(0, 40, "Enter or A to confirm")
		draw_text(0, 60, "Space or R3 to toggle special (if available)")
		draw_text(0, 80, "Left shift or L3 to toggle skip")
		if (training) draw_text(0, 100, "Page Up and Page Down or L and R to change card")
		if (training) draw_text(0, 120, "Home and End or ZL and ZR to change board")
		if (training) draw_text(0, 140, "R or - to reset")
		draw_set_font(fnt_gambit_card)
		draw_set_halign(fa_center)
		if (training) draw_text(200 + 172 * 0.7, 500 - 40, "Current Card")
		draw_set_font(fnt_gambit_big)
		draw_set_color(c_white)
		draw_text(700, 200, string(12 - turns))
		draw_set_color(16669512)
		draw_text(700, 400, string(turf_opponent))
		draw_set_color(390893)
		draw_text(700, 600, string(turf_self))
		draw_set_font(fnt_blitz)
		draw_set_color(c_white)
		draw_text(700, 190, "Turns Left")
		draw_set_halign(fa_left)
		draw_specialbar(50, 1080 - 100, 0, special_meter_total_self - special_meter_used_self, 0.5, 1)
		draw_specialbar(50, 100, 1, special_meter_total_opponent - special_meter_used_opponent, 0.5, 1)
		if (game_ended) {
			draw_set_font(fnt_gambit_big)
			draw_set_alpha(0.5)
			draw_set_color(0)
			draw_rectangle(0, 0, 1920, 1080, 0)
			draw_set_alpha(1)
			draw_set_color(c_white)
			draw_text(500, 500, condstr(turf_self != turf_opponent, condstr(turf_self > turf_opponent, "You win!", "You lose..."), "It's a draw!"))
		}
		if (!training) if (current_time - ping_out_timer >= 1000) {log("Pinged " + string(network_send_packet(socket, ping_buffer, buffer_get_size(ping_buffer)))); ping_out_timer = current_time}
		if (!training) if (current_time - ping_timer >= 5000) {disconnect() show_message("The opponent timed out.")}
		if (training = 1) if (draw_back_button()) {set_board(current_board); screen = screen_main; training = 0; main_menu_select = 0; current_card = -1}
		if (game_ended) if (draw_back_button()) {disconnect()}
	}
	if (debug) {
		draw_set_font(fnt_gambit)
		draw_set_color(c_white)
		draw_text(0, 160, "Card Index: " + string(current_card + 1))
		draw_text(0, 180, "Board Index: " + string(current_board + 1))
		draw_text(0, 200, "Self special meter: " + string(special_meter_total_self - special_meter_used_self))
		draw_text(0, 220, "Opponent special meter: " + string(special_meter_total_opponent - special_meter_used_opponent))
		draw_text(0, 240, "Placing position: " + string(placing_x) + ", " + string(placing_y))
		draw_text(0, 260, "Gamepad device: " + condstr(gamepad_device != -1, string(gamepad_device), "Not Found"))
		draw_text(0, 280, "Role: " + condstr(role = -1, "Waiting", condstr(role = 0, "Server", "Client")))
		draw_text(0, 300, "Connected: " + condstr(connected = "", "Waiting", connected))
		draw_text(0, 320, "Socket ID: " + condstr(socket = -1, "Waiting", string(socket)))
		draw_debug_overlay()
	}
	window_set_cursor(curs)
}