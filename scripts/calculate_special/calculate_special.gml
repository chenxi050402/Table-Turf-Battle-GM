function calculate_special(){
	var self_specials = 0;
	var opponent_specials = 0;
	var add_special = 1;
	for (var i = 0; i < board_w; i++) {
		for (var j = 0; j < board_h; j++) {
			if (board_array[i][j] = 1) {
				for (var l = 0; l < 9; l++) {
					try {
						if (board_array[i - 1 + l mod 3][j - 1 + l div 3] = 0) add_special = 0
					}
					catch (e) {
						
					}
				}
				if (add_special) {
					array_push(specials_self, [i, j])
					self_specials++
				}
			}
			add_special = 1
			if (board_array[i][j] = 2) {
				for (var l = 0; l < 9; l++) {
					try {
						if (board_array[i - 1 + l mod 3][j - 1 + l div 3] = 0) add_special = 0
					}
					catch (e) {
						
					}
				}
				if (add_special) {
					array_push(specials_opponent, [i, j])
					opponent_specials++
				}
			}
		}
	}
	special_meter_total_self = self_specials + skips_self
	special_meter_total_opponent = opponent_specials + skips_opponent
}