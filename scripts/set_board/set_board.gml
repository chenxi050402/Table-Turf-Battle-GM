function set_board(board_index){
	current_board = board_index
	board_reset()
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
	if (board_index = 0) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[4][3] = 2
		board_array[4][22] = 1
		placing_x = 5
		placing_y = 22
	} else if (board_index = 1) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[12][3] = 2
		board_array[3][18] = 1
		for (var i = 0; i < 8; i++) {
			for (var j = 0; j < 7; j++) {
				board_array[i][j] = -1
				board_array[i + 8][j + 15] = -1
			}
		}
		placing_x = 4
		placing_y = 18
	} else if (board_index = 2) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[9][3] = 2
		board_array[9][19] = 1
		for (var i = 0; i < 6; i++) {
			for (var j = 0; j < 8; j++) {
				board_array[i][j] = -1
				board_array[i + 13][j] = -1
				board_array[i][j + 15] = -1
				board_array[i + 13][j + 15] = -1
			}
		}
		placing_x = 10
		placing_y = 19
	} else if (board_index = 3) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[11][3] = 2
		board_array[3][11] = 1
		placing_x = 4
		placing_y = 11
	} else if (board_index = 4) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[12][3] = 2
		board_array[3][12] = 1
		for (var i = 0; i < 4; i++) {
			for (var j = 0; j < 4; j++) {
				board_array[i + 6][j + 6] = -1
			}
		}
		placing_x = 4
		placing_y = 12
	} else if (board_index = 5) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[8][5] = 2
		board_array[8][19] = 1
		for (var i = 0; i < 8; i++) {
			for (var j = 0; j < 8 - i; j++) {
				board_array[i][j] = -1
				board_array[i + 9 + j][j] = -1
				board_array[i][j + 17 + i] = -1
				board_array[16 - i][24 - j] = -1
			}
		}
		board_array[0][9] = -1; board_array[16][9] = -1; 
		board_array[0][15] = -1; board_array[16][15] = -1; 
		for (var i = 0; i < 2; i++) {board_array[i][10] = -1; board_array[i][14] = -1; board_array[16 - i][10] = -1; board_array[16 - i][14] = -1}
		for (var i = 0; i < 3; i++) {board_array[i][11] = -1; board_array[i][13] = -1; board_array[16 - i][11] = -1; board_array[16 - i][13] = -1}
		for (var i = 0; i < 4; i++) {board_array[i][12] = -1; board_array[16 - i][12] = -1}
		placing_x = 9
		placing_y = 19
	} else if (board_index = 6) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[13][3] = 2
		board_array[3][21] = 1
		for (var i = 0; i < 5; i++) {
			for (var j = 0; j < 18; j++) {
				board_array[i][j] = -1
				board_array[i + 12][j + 7] = -1
			}
		}
		placing_x = 4
		placing_y = 21
	} else if (board_index = 7) {
		for (var i = 0; i < board_w; i++) {
			for (var j = 0; j < board_h; j++) {
				board_array[i][j] = 0
			}
		}
		board_array[7][2] = 2
		board_array[2][7] = 1
		placing_x = 3
		placing_y = 7
	}
}