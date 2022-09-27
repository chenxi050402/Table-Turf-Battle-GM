function board_reset(){
	for (var i = 0; i < 100; i++) {
		for (var j = 0; j < 100; j++) {
			board_array[i][j] = -1
		}
	}
	orientation = 0
	up_t = 0
	down_t = 0
	left_t = 0
	right_t = 0
	pgup_t = 0
	pgdn_t = 0
	special_meter_total_self = 0
	special_meter_used_self = 0
	specials_self = []
	special_meter_total_opponent = 0
	special_meter_used_opponent = 0
	specials_opponent = []
}