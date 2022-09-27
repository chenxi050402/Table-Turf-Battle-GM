function draw_serverlist(){
	var scale = []
	var click = []
	for (var i = 0; i < array_length(found_servers); i++) {
		array_push(scale, 1)
		array_push(click, 0)
	}
	draw_set_font(fnt_blitz_med)
	draw_set_color(c_white)
	if (array_length(found_servers) = 0) draw_text(1920 / 2 - 500, 340 - 45, "Searching for rooms...")
	for (var i = 0; i < array_length(found_servers); i++) {
		click[i] = mouse_rectangle(1920 / 2 - 500, 340 - 40 + i * 100, 1000, 80)
		if (click[i]) click[i] += mouse_check_button(mb_left)
		if (click[i] && mouse_check_button_released(mb_left)) click[i] = 3
		if (keyboard_check(kb_btn_confirm) || gamepad_button_check(gamepad_device, gp_btn_confirm)) click[i] = 2
		if (keyboard_check_released(kb_btn_confirm) || gamepad_button_check_released(gamepad_device, gp_btn_confirm)) click[i] = 3
		if (click[i] = 2) scale[i] = 0.95
		draw_set_color(c_white)
		if (serverlist_select = i) draw_roundrect_ext(1920 / 2 - 506 * scale[i], 340 - 45 * scale[i] + i * 100, 1920 / 2 + 504 * scale[i], 340 + 43 * scale[i] + i * 100, 90 * scale[i], 90 * scale[i], 1)
		draw_set_color(make_color_rgb(18, 40, 0))
		draw_sprite_ext(spr_serverlist_item, 0, 1920 / 2 - 500 * scale[i], 340 - 40 * scale[i] + i * 100, scale[i], scale[i], 0, -1, draw_get_alpha())
		draw_text_transformed(1920 / 2 + (-500 + 30) * scale[i], 340 - 25 * scale[i] + i * 100, found_servers[i][3] + "        " + found_servers[i][0] + ":" + string(found_servers[i][1]) + "        ID: " + string(found_servers[i][2]), scale[i], scale[i], 0)
		draw_text_transformed(1920 / 2 + (500 - 30 - string_width("Joinable")) * scale[i], 340 - 25 * scale[i] + i * 100, "Joinable", scale[i], scale[i], 0)
		if (click[i]) curs = cr_handpoint
		if (click[i] = 3) {socket = network_create_socket(network_socket_tcp); if (network_connect_async(socket, found_servers[i][0], server_port) >= 0) connected = found_servers[i][0] + ":" + string(server_port); role = 1}
	}
}