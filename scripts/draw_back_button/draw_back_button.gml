function draw_back_button(){
	var scale = 1;
	var click = 0;
	click = mouse_rectangle(100 + 6, 1080 - 50 - 75 + 7, 250 - 6 - 4, 75 - 11)
	if (click) click += mouse_check_button(mb_left)
	if (click && mouse_check_button_released(mb_left)) click = 3
	if (keyboard_check(kb_btn_back) || gamepad_button_check(gamepad_device, gp_btn_back)) click = 2
	if (keyboard_check_released(kb_btn_back) || gamepad_button_check_released(gamepad_device, gp_btn_back)) click = 3
	if (click = 2) scale = 0.95
	draw_set_font(fnt_blitz_med)
	var textw = (string_width("Back") + 32 * 1.2 + 10) / 2
	draw_tape(225 - 125 * scale, 1080 - 75 + 37.5 - 37.5 * scale - 50, 250, scale)
	draw_sprite_ext(spr_abxy, 1, 100 + 125 - (textw + 20) * scale, 1080 - 37.5 - 16 * scale - 50, 1.2 * scale, 1.2 * scale, 0, -1, draw_get_alpha())
	draw_set_color(c_white)
	draw_text_transformed(100 + 125 - (textw - 32 * 1.2 - 10 + 20) * scale, 1080 - 37.5 - 24 * scale - 50, "Back", scale, scale, 0)
	if (click) curs = cr_handpoint
	return (click = 3)
}