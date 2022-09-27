function check_edge_block(direction_str){
	var len, hei;
	if (orientation = 0 || orientation = 2) {
		len = array_length(cards[current_card][0]);
		hei = array_length(cards[current_card]);
	} else {
		hei = array_length(cards[current_card][0]);
		len = array_length(cards[current_card]);
	}
	if (direction_str = "up") return (placing_y + 1 >= 0)
	if (direction_str = "down") return (placing_y + hei - 1 < board_h)
	if (direction_str = "left") return (placing_x + 1 >= 0)
	if (direction_str = "right") return (placing_x + len - 1< board_w)
}