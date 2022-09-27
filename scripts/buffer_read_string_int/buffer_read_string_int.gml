function buffer_read_string_int(buffer) {
	// buffer_read_string_int()
	// Reads a string consisting of an int for its length.

	var str = "";
	var len = buffer_read_int(buffer);
	repeat (len)
	    str += chr(buffer_read_byte(buffer))
	return str
}