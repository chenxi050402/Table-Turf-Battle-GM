function control_networking(){
	if (async_load[? "type"] == network_type_connect) {connected = string(async_load[? "ip"]) + ":" + string(async_load[? "port"]); socket = async_load[? "socket"]}
	else if (async_load[? "type"] == network_type_disconnect) {disconnect(); show_message("The opponent disconnected.")}
	else if (async_load[? "type"] == network_type_data) {
		var temp_buffer = async_load[? "buffer"];
		var type = buffer_read_byte(temp_buffer)
		if (type = 1) {
			var ox, oy, oi, oo, os
			ox = buffer_read_byte(temp_buffer)
			oy = buffer_read_byte(temp_buffer)
			oi = buffer_read_int(temp_buffer)
			oo = buffer_read_byte(temp_buffer)
			os = buffer_read_byte(temp_buffer)
			place_card_net(ox, oy, oi, oo, os)
		} else if (type = 2) {
			board_to_set = buffer_read_byte(temp_buffer)
		} else if (type = 10) {
			var remote_ip, remote_port, remote_id, remote_name, is_known;
			remote_ip = string(async_load[? "ip"])
			remote_port = string(async_load[? "port"])
			remote_id = buffer_read_string_int(temp_buffer)
			remote_name = buffer_read_string_int(temp_buffer)
			is_known = -1
			if (screen = screen_joinroom && remote_id != server_id) {
				for (var i = 0; i < array_length(found_servers); i++) {
					if (found_servers[i][2] = remote_id) is_known = i
				}
				if (is_known != -1) {
					found_servers[is_known][4] = current_time
				} else {
					array_push(found_servers, [remote_ip, remote_port, remote_id, remote_name, current_time])
				}
			}
			log("Incoming broadcast, id: " + remote_id + ", name: " + remote_name)
			log(found_servers)
		} else if (type = 100) {
			ping_timer = current_time
		}
	}
}