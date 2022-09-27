function place_card(x1, y1, card_index, orientation, side){
	var len, hei;
	len = array_length(cards[card_index][0]);
	hei = array_length(cards[card_index]);
	if (side = 0) {
		if (orientation = 0) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[i + x1][j + y1] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[i + x1][j + y1] = 1 + side
				}
			}
		} else if (orientation = 1) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[-j + x1 + hei - 1][i + y1] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[-j + x1 + hei - 1][i + y1] = 1 + side
				}
			}
		} else if (orientation = 2) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[-i + x1 + len - 1][-j + y1 + hei - 1] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[-i + x1 + len - 1][-j + y1 + hei - 1] = 1 + side
				}
			}
		} else if (orientation = 3) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[j + x1][-i + y1 + len - 1] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[j + x1][-i + y1 + len - 1] = 1 + side
				}
			}
		}
	} else {
		if (orientation = 0) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[board_w - 1 - (i + x1)][board_h - 1 - (j + y1)] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[board_w - 1 - (i + x1)][board_h - 1 - (j + y1)] = 1 + side
				}
			}
		} else if (orientation = 1) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[board_w - 1 - (-j + x1 + hei - 1)][board_h - 1 - (i + y1)] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[board_w - 1 - (-j + x1 + hei - 1)][board_h - 1 - (i + y1)] = 1 + side
				}
			}
		} else if (orientation = 2) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[board_w - 1 - (-i + x1 + len - 1)][board_h - 1 - (-j + y1 + hei - 1)] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[board_w - 1 - (-i + x1 + len - 1)][board_h - 1 - (-j + y1 + hei - 1)] = 1 + side
				}
			}
		} else if (orientation = 3) {
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < hei; j++) {
					if (cards[card_index][j][i] = 1) board_array[board_w - 1 - (j + x1)][board_h - 1 - (-i + y1 + len - 1)] = 3 + side
					else if (cards[card_index][j][i] = 2) board_array[board_w - 1 - (j + x1)][board_h - 1 - (-i + y1 + len - 1)] = 1 + side
				}
			}
		}
	}
}