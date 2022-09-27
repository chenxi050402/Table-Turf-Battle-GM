function calculate_turf(){
	turf_self = 0
	turf_opponent = 0
	for (var i = 0; i < board_w; i++) {
		for (var j = 0; j < board_h; j++) {
			if (board_array[i][j] = 1 || board_array[i][j] = 3) turf_self++
			if (board_array[i][j] = 2 || board_array[i][j] = 4) turf_opponent++
		}
	}
}