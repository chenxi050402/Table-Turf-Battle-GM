function hand_init(){
	current_hand = []
	for (var i = 0; i < 4; i++) {
		array_push(current_hand, hand_draw())
	}
}