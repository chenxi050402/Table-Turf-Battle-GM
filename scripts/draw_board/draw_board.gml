function draw_board(board_index, x1, y1, color){
	var block_index, block_color;
	if (board_index = 0) {
		board_w = 9
		board_h = 26
	} else if (board_index = 1) {
		board_w = 16
		board_h = 22
	} else if (board_index = 2) {
		board_w = 19
		board_h = 23
	} else if (board_index = 3) {
		board_w = 15
		board_h = 15
	} else if (board_index = 4) {
		board_w = 16
		board_h = 16
	} else if (board_index = 5) {
		board_w = 17
		board_h = 25
	} else if (board_index = 6) {
		board_w = 17
		board_h = 25
	} else if (board_index = 7) {
		board_w = 10
		board_h = 10
	}
	board_x = x1 - 26 * board_w * 0.7
	board_y = y1 - 26 * board_h * 0.7
	for (var i = 0; i < board_w; i++) {
		for (var j = 0; j < board_h; j++) {
			if (board_array[i][j] != -1) draw_sprite_ext(spr_blocks, 0, x1 + (i * 52 - 26 * board_w) * 0.7, y1 + (j * 52 - 26 * board_h) * 0.7, 0.7, 0.7, 0, color, draw_get_alpha())
		}
	}
	for (var p = 0; p < 100; p++) {
		for (var o = 0; o < 100; o++) {
			if (board_array[p][o] = 1) {
				block_index = 1
				block_color = 434943
			} else if (board_array[p][o] = 2) {
				block_index = 1
				block_color = 16771337
			} else if (board_array[p][o] = 3) {
				block_index = 2
				block_color = 390893
				if (special_on) block_color = 164477
			} else if (board_array[p][o] = 4) {
				block_index = 2
				block_color = 16669512
				if (special_on) block_color = 8137763
			} else if (board_array[p][o] = 5) {
				block_index = 3
				block_color = -1
			}
			if (board_array[p][o] > 0) draw_sprite_ext(spr_blocks, block_index, board_x + p * 52 * 0.7, board_y + o * 52 * 0.7, 0.7, 0.7, 0, block_color, draw_get_alpha())
		}
	}
	for (var s = 0; s < array_length(specials_self); s++) {
		draw_sprite_ext(spr_blocks, 6, board_x + specials_self[s][0] * 52 * 0.7, board_y + specials_self[s][1] * 52 * 0.7, 0.7, 0.7, 0, 390893, draw_get_alpha())
	}
	for (var k = 0; k < array_length(specials_opponent); k++) {
		draw_sprite_ext(spr_blocks, 6, board_x + specials_opponent[k][0] * 52 * 0.7, board_y + specials_opponent[k][1] * 52 * 0.7, 0.7, 0.7, 0, 390893, draw_get_alpha())
	}
}