function send_changeboard(board_index){
	var success = 0;
	if (connected != "") {
		var temp_buffer = buffer_create(2, buffer_fixed, 1);
		buffer_write_byte(2, temp_buffer)
		buffer_write_byte(board_index, temp_buffer)
		success = network_send_packet(socket, temp_buffer, buffer_get_size(temp_buffer))
		buffer_delete(temp_buffer)
	}
	return success
}