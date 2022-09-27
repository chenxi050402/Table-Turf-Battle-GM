function control_step(){
	if (board_to_set != -1) {
		set_board(board_to_set)
		board_to_set = -1
	}
}