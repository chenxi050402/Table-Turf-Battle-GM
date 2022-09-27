function place_card_both(x1, y1, x2, y2, card_index_self, card_index_opponent, orientation_self, orientation_opponent){
	var len_self, len_opponent, hei_self, hei_opponent, temp_array;
	try {
		len_self = array_length(cards[card_index_self][0]);
		hei_self = array_length(cards[card_index_self]);
		len_opponent = array_length(cards[card_index_opponent][0]);
		hei_opponent = array_length(cards[card_index_opponent]);
	}
	catch (e) {}
	if (card_index_self = -1) {
		if (card_index_opponent != -1) place_card(x2, y2, card_index_opponent, orientation_opponent, 1)
	} else if (card_index_opponent = -1) {
		place_card(x1, y1, card_index_self, orientation_self, 0)
	} else {
		if (get_value(card_index_self) > get_value(card_index_opponent)) {
			place_card(x1, y1, card_index_self, orientation_self, 0)
			place_card(x2, y2, card_index_opponent, orientation_opponent, 1)
		} else if (get_value(card_index_self) < get_value(card_index_opponent)) {
			place_card(x2, y2, card_index_opponent, orientation_opponent, 1)
			place_card(x1, y1, card_index_self, orientation_self, 0)
		} else {
			temp_array = []
			for (var i = 0; i < board_w; i++) {
				array_push(temp_array, [])
				for (var j = 0; j < board_h; j++) {
					array_push(temp_array[i], -1)
				}
			}
		
			if (orientation_self = 0) {
				for (var i = 0; i < len_self; i++) {
					for (var j = 0; j < hei_self; j++) {
						if (cards[card_index_self][j][i] = 1) temp_array[i + x1][j + y1] = 3
						else if (cards[card_index_self][j][i] = 2) temp_array[i + x1][j + y1] = 1
					}
				}
			} else if (orientation_self = 1) {
				for (var i = 0; i < len_self; i++) {
					for (var j = 0; j < hei_self; j++) {
						if (cards[card_index_self][j][i] = 1) temp_array[-j + x1 + hei_self - 1][i + y1] = 3
						else if (cards[card_index_self][j][i] = 2) temp_array[-j + x1 + hei_self - 1][i + y1] = 1
					}
				}
			} else if (orientation_self = 2) {
				for (var i = 0; i < len_self; i++) {
					for (var j = 0; j < hei_self; j++) {
						if (cards[card_index_self][j][i] = 1) temp_array[-i + x1 + len_self - 1][-j + y1 + hei_self - 1] = 3
						else if (cards[card_index_self][j][i] = 2) temp_array[-i + x1 + len_self - 1][-j + y1 + hei_self - 1] = 1
					}
				}
			} else if (orientation_self = 3) {
				for (var i = 0; i < len_self; i++) {
					for (var j = 0; j < hei_self; j++) {
						if (cards[card_index_self][j][i] = 1) temp_array[j + x1][-i + y1 + len_self - 1] = 3
						else if (cards[card_index_self][j][i] = 2) temp_array[j + x1][-i + y1 + len_self - 1] = 1
					}
				}
			}
		
			if (orientation_opponent = 0) {
				for (var i = 0; i < len_opponent; i++) {
					for (var j = 0; j < hei_opponent; j++) {
						if (cards[card_index_opponent][j][i] >= 1) {
							if (temp_array[board_w - 1 - (i + x2)][board_h - 1 - (j + y2)] > 0) temp_array[board_w - 1 - (i + x2)][board_h - 1 - (j + y2)] = 5
							else if (cards[card_index_opponent][j][i] = 1) temp_array[board_w - 1 - (i + x2)][board_h - 1 - (j + y2)] = 4
							else if (cards[card_index_opponent][j][i] = 2) temp_array[board_w - 1 - (i + x2)][board_h - 1 - (j + y2)] = 2
						}
					}
				}
			} else if (orientation_opponent = 1) {
				for (var i = 0; i < len_opponent; i++) {
					for (var j = 0; j < hei_opponent; j++) {
						if (cards[card_index_opponent][j][i] >= 1) {
							if (temp_array[board_w - 1 - (-j + x2 + hei_opponent - 1)][board_h - 1 - (i + y2)] > 0) temp_array[board_w - 1 - (-j + x2 + hei_opponent - 1)][board_h - 1 - (i + y2)] = 5
							else if (cards[card_index_opponent][j][i] = 1) temp_array[board_w - 1 - (-j + x2 + hei_opponent - 1)][board_h - 1 - (i + y2)] = 4
							else if (cards[card_index_opponent][j][i] = 2) temp_array[board_w - 1 - (-j + x2 + hei_opponent - 1)][board_h - 1 - (i + y2)] = 2
						}
					}
				}
			} else if (orientation_opponent = 2) {
				for (var i = 0; i < len_opponent; i++) {
					for (var j = 0; j < hei_opponent; j++) {
						if (cards[card_index_opponent][j][i] >= 1) {
							if (temp_array[board_w - 1 - (-i + x2 + len_opponent - 1)][board_h - 1 - (-j + y2 + hei_opponent - 1)] > 0) temp_array[board_w - 1 - (-i + x2 + len_opponent - 1)][board_h - 1 - (-j + y2 + hei_opponent - 1)] = 5
							else if (cards[card_index_opponent][j][i] = 1) temp_array[board_w - 1 - (-i + x2 + len_opponent - 1)][board_h - 1 - (-j + y2 + hei_opponent - 1)] = 4
							else if (cards[card_index_opponent][j][i] = 2) temp_array[board_w - 1 - (-i + x2 + len_opponent - 1)][board_h - 1 - (-j + y2 + hei_opponent - 1)] = 2
						}
					}
				}
			} else if (orientation_opponent = 3) {
				for (var i = 0; i < len_opponent; i++) {
					for (var j = 0; j < hei_opponent; j++) {
						if (cards[card_index_opponent][j][i] >= 1) {
							if (temp_array[board_w - 1 - (j + x2)][board_h - 1 - (-i + y2 + len_opponent - 1)] > 0) temp_array[board_w - 1 - (j + x2)][board_h - 1 - (-i + y2 + len_opponent - 1)] = 5
							else if (cards[card_index_opponent][j][i] = 1) temp_array[board_w - 1 - (j + x2)][board_h - 1 - (-i + y2 + len_opponent - 1)] = 4
							else if (cards[card_index_opponent][j][i] = 2) temp_array[board_w - 1 - (j + x2)][board_h - 1 - (-i + y2 + len_opponent - 1)] = 2
						}
					}
				}
			}
		
			for (var i = 0; i < board_w; i++) {
				for (var j = 0; j < board_h; j++) {
					if (temp_array[i][j] = 1) board_array[i][j] = 1
					else if (temp_array[i][j] = 2) board_array[i][j] = 2
					else if (temp_array[i][j] = 3) board_array[i][j] = 3
					else if (temp_array[i][j] = 4) board_array[i][j] = 4
					else if (temp_array[i][j] = 5) board_array[i][j] = 5
				}
			}
		}
	}
	calculate_special()
	calculate_turf()
}