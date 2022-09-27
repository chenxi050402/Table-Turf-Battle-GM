function boards_init(){
	board_array = []
	for (var i = 0; i < 100; i++) {
		array_push(board_array, [])
		for (var j = 0; j < 100; j++) {
			array_push(board_array[i], -1)
		}
	}
}