function get_value(card_index){
	var len, hei, val;
	val = 0;
	if (card_index != -1) {
		len = array_length(cards[card_index][0]);
		hei = array_length(cards[card_index]);
		for (i = 0; i < len; i++) {
			for (j = 0; j < hei; j++) {
				if (cards[card_index][j][i] != 0) val++
			}
		}
	} else {
		val = -1
	}
	return val
}