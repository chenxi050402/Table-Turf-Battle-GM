function draw_button_modesel(x1, y1, scale, color, controller, clickable, text, text_color, icon_index){
	var mouse_hover, select, text_scale;
	select = 0
	text_scale = 1
	mouse_hover = mouse_rectangle(x1, y1, 343 * scale, 480 * scale)
	if (mouse_hover) mouse_hover += mouse_check_button(mb_left)
	if (mouse_hover || controller) select = 1
	if (mouse_hover = 2 || controller = 2) select = 2
	select = select * clickable
	if (select = 2) {scale = scale * 0.95; x1 = x1 + 343 * 0.05 / 2; y1 = y1 + 480 * 0.05 / 2}
	draw_set_color(c_white)
	if (select) draw_roundrect_ext(x1 - 5 * scale, y1 - 5 * scale, x1 + (342 + 5) * scale, y1 + (479 + 5) * scale, 66 * scale, 66 * scale, 1)
	draw_set_color(color)
	draw_set_alpha(0.5)
	draw_roundrect_ext(x1, y1, x1 + 342 * scale, y1 + 479 * scale, 54 * scale, 54 * scale, 0)
	draw_roundrect_ext(x1 + 10 * scale, y1 + 10 * scale, x1 + (342 - 10) * scale, y1 + (479 - 10) * scale, 30 * scale, 30 * scale, 0)
	draw_set_alpha(1)
	draw_roundrect_ext(x1 + 14 * scale, y1 + 14 * scale, x1 + (342 - 14) * scale, y1 + (479 - 14) * scale, 26 * scale, 26 * scale, 0)
	draw_set_font(fnt_gambit_card_big)
	if (string_width(text) > 267) text_scale = 267 / string_width(text)
	draw_set_color(text_color)
	draw_set_halign(fa_center)
	draw_text_transformed(x1 + 172 * scale, y1 + 59 * scale, text, text_scale * scale, scale, 0)
	draw_set_halign(fa_left)
	draw_sprite_ext(spr_main_icons, icon_index, x1 + 171.5 - 128 * 0.7 * scale, y1 + 240 - 40 * scale, 0.7 * scale, 0.7 * scale, 0, -1, draw_get_alpha())
	return select
}