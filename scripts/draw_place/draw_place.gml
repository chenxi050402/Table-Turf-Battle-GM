function draw_place(){
	var len, hei;
	len = array_length(cards[current_card][0]);
	hei = array_length(cards[current_card]);
	var is_placable = 1;
	var is_withself = 0;
	var place_color;
	var core_color;
	if (orientation = 0) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] != 0) {
					while (!check_edge_block("up")) placing_y += 1
					while (!check_edge_block("down")) placing_y -= 1
					while (!check_edge_block("left")) placing_x += 1
					while (!check_edge_block("right")) placing_x -= 1
					for (var l = 0; l < 9; l++) {
						try {
							if (board_array[i + placing_x - 1 + l mod 3][j + placing_y - 1 + l div 3] = 1 ||
							(board_array[i + placing_x - 1 + l mod 3][j + placing_y - 1 + l div 3] = 3 && !special_on)) is_withself = 1
						}
						catch (e) {
						
						}
					}
					if (board_array[i + placing_x][j + placing_y] != 0 && ((board_array[i + placing_x][j + placing_y] != 3 && board_array[i + placing_x][j + placing_y] != 4) || !special_on)) is_placable = 0
				}
			}
		}
	} else if (orientation = 1) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] != 0) {
					while (!check_edge_block("up")) placing_y += 1
					while (!check_edge_block("down")) placing_y -= 1
					while (!check_edge_block("left")) placing_x += 1
					while (!check_edge_block("right")) placing_x -= 1
					for (var l = 0; l < 9; l++) {
						try {
							if (board_array[-j + placing_x + hei - 1 - 1 + l mod 3][i + placing_y - 1 + l div 3] = 1 ||
							(board_array[-j + placing_x + hei - 1 - 1 + l mod 3][i + placing_y - 1 + l div 3] = 3 && !special_on)) is_withself = 1
						}
						catch (e) {
						
						}
					}
					if (board_array[-j + placing_x + hei - 1][i + placing_y] != 0 && (board_array[-j + placing_x + hei - 1][i + placing_y] != 3 && board_array[-j + placing_x + hei - 1][i + placing_y] != 4 || !special_on)) is_placable = 0
				}
			}
		}
	} else if (orientation = 2) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] != 0) {
					while (!check_edge_block("up")) placing_y += 1
					while (!check_edge_block("down")) placing_y -= 1
					while (!check_edge_block("left")) placing_x += 1
					while (!check_edge_block("right")) placing_x -= 1
					for (var l = 0; l < 9; l++) {
						try {
							if (board_array[-i + placing_x + len - 1 - 1 + l mod 3][-j + placing_y + hei - 1 - 1 + l div 3] = 1 ||
							(board_array[-i + placing_x + len - 1 - 1 + l mod 3][-j + placing_y + hei - 1 - 1 + l div 3] = 3 && !special_on)) is_withself = 1
						}
						catch (e) {
						
						}
					}
					if (board_array[-i + placing_x + len - 1][-j + placing_y + hei - 1] != 0 && (board_array[-i + placing_x + len - 1][-j + placing_y + hei - 1] != 3 && board_array[-i + placing_x + len - 1][-j + placing_y + hei - 1] != 4 || !special_on)) is_placable = 0
				}
			}
		}
	} else if (orientation = 3) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] != 0) {
					while (!check_edge_block("up")) placing_y += 1
					while (!check_edge_block("down")) placing_y -= 1
					while (!check_edge_block("left")) placing_x += 1
					while (!check_edge_block("right")) placing_x -= 1
					for (var l = 0; l < 9; l++) {
						try {
							if (board_array[j + placing_x - 1 + l mod 3][-i + placing_y + len - 1 - 1 + l div 3] = 1 ||
							(board_array[j + placing_x - 1 + l mod 3][-i + placing_y + len - 1 - 1 + l div 3] = 3 && !special_on)) is_withself = 1
						}
						catch (e) {
						
						}
					}
					if (board_array[j + placing_x][-i + placing_y + len - 1] != 0 && (board_array[j + placing_x][-i + placing_y + len - 1] != 3 && board_array[j + placing_x][-i + placing_y + len - 1] != 4 || !special_on)) is_placable = 0
				}
			}
		}
	}
	if (!is_withself) is_placable = 0
	
	if (is_placable) {
		place_color = 5168340
		core_color = 6452626
	} else {
		place_color = 13487565
		core_color = 13487565
	}
	
	if (orientation = 0) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] = 1) draw_sprite_ext(spr_blocks, 4, board_x + (i + placing_x) * 52 * 0.7, board_y + (j + placing_y) * 52 * 0.7, 0.7, 0.7, 0, place_color, draw_get_alpha())
				else if (cards[current_card][j][i] = 2) draw_sprite_ext(spr_blocks, 5, board_x + (i + placing_x) * 52 * 0.7, board_y + (j + placing_y) * 52 * 0.7, 0.7, 0.7, 0, core_color, draw_get_alpha())
			}
		}
	} else if (orientation = 1) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] = 1) draw_sprite_ext(spr_blocks, 4, board_x + (-j + placing_x + hei - 1) * 52 * 0.7, board_y + (i + placing_y) * 52 * 0.7, 0.7, 0.7, 0, place_color, draw_get_alpha())
				else if (cards[current_card][j][i] = 2) draw_sprite_ext(spr_blocks, 5, board_x + (-j + placing_x + hei - 1) * 52 * 0.7, board_y + (i + placing_y) * 52 * 0.7, 0.7, 0.7, 0, core_color, draw_get_alpha())
			}
		}
	} else if (orientation = 2) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] = 1) draw_sprite_ext(spr_blocks, 4, board_x + (-i + placing_x + len - 1) * 52 * 0.7, board_y + (-j + placing_y + hei - 1) * 52 * 0.7, 0.7, 0.7, 0, place_color, draw_get_alpha())
				else if (cards[current_card][j][i] = 2) draw_sprite_ext(spr_blocks, 5, board_x + (-i + placing_x + len - 1) * 52 * 0.7, board_y + (-j + placing_y + hei - 1) * 52 * 0.7, 0.7, 0.7, 0, core_color, draw_get_alpha())
			}
		}
	} else if (orientation = 3) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[current_card][j][i] = 1) draw_sprite_ext(spr_blocks, 4, board_x + (j + placing_x) * 52 * 0.7, board_y + (-i + placing_y + len - 1) * 52 * 0.7, 0.7, 0.7, 0, place_color, draw_get_alpha())
				else if (cards[current_card][j][i] = 2) draw_sprite_ext(spr_blocks, 5, board_x + (j + placing_x) * 52 * 0.7, board_y + (-i + placing_y + len - 1) * 52 * 0.7, 0.7, 0.7, 0, core_color, draw_get_alpha())
			}
		}
	}
	if ((keyboard_check_pressed(kb_btn_confirm) || gamepad_button_check_pressed(gamepad_device, gp_btn_confirm)) && is_placable) {
		if (!training) place_card_hold(placing_x, placing_y, current_card, orientation, special_on)
		else {place_card(placing_x, placing_y, current_card, orientation, 0); if (special_on) special_meter_used_self += special_points[current_card]; calculate_special(); calculate_turf(); special_on = 0}
	}
	
}