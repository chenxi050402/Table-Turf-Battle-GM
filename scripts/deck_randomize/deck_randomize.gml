function deck_randomize(){
	initial_deck = []
	var card_to_add = -1
	var card_want_add = -1
	var can_add = 1
	for (var i = 0; i < 15; i++) {
		card_to_add = -1
		card_want_add = floor(random(162))
		while (card_to_add = -1) {
			can_add = 1
			for (var j = 0; j < array_length(initial_deck); j++) {
				if (card_want_add = initial_deck[j]) can_add = 0
			}
			if (can_add) card_to_add = card_want_add
			else card_want_add = floor(random(162))
		}
		array_push(initial_deck, card_to_add)
	}
}