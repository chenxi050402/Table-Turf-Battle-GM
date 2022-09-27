function place_card_hold(x1, y1, card_index, orientation, is_special){
	placed = 1
	holding_x = x1
	holding_y = y1
	holding_index = card_index
	holding_orientation = orientation
	holding_special = is_special
	current_card = -1
	if (connected != "") {
		var temp_buffer = buffer_create(9, buffer_fixed, 1);
		buffer_write_byte(1, temp_buffer)
		buffer_write_byte(x1, temp_buffer)
		buffer_write_byte(y1, temp_buffer)
		buffer_write_int(card_index, temp_buffer)
		buffer_write_byte(orientation, temp_buffer)
		buffer_write_byte(is_special, temp_buffer)
		network_send_packet(socket, temp_buffer, buffer_get_size(temp_buffer));
		buffer_delete(temp_buffer)
	}
}