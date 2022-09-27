function hand_draw(){
	var card_to_add = floor(random(array_length(current_deck)))
	var card = current_deck[card_to_add]
	array_delete(current_deck, card_to_add, 1)
	return card
}