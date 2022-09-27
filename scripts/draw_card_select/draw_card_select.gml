function draw_card_select(x1, y1, side, card_index, scale, selected){
	var len, hei, block_color, value, name, name_scale, color;
	name = "None"
	if (card_index != -1) {
		len = array_length(cards[card_index][0]);
		hei = array_length(cards[card_index]);
		name = card_names[card_index];
	}
	value = string(get_value(card_index));
	name_scale = 1
	block_color[0] = 390893 //self normal
	block_color[1] = 434943 //self core
	block_color[2] = 16669512 //oppo normal
	block_color[3] = 16771337 //oppo core
	color = c_dkgrey
	if (selected) color = c_grey
	draw_set_color(color)
	draw_roundrect_ext(x1, y1, x1 + (291.2 + 19) * scale, y1 + (291.2 + 10 + 120) * scale, 26 * scale, 26 * scale, 0)
	for (var i = 0; i < 8; i++) {
		for (var j = 0; j < 8; j++) {
			draw_sprite_ext(spr_blocks, 0, x1 + (10 + i * 52 * 0.7) * scale, y1 + (10 + j * 52 * 0.7) * scale, 0.7 * scale, 0.7 * scale, 0, color, draw_get_alpha())
		}
	}
	if (card_index != -1) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[card_index][j][i] = 1) draw_sprite_ext(spr_blocks, 1, x1 + (155.6 - ceil(len / 2) * 0.7 * 52) * scale + i * 52 * 0.7 * scale, y1 + (155.6 - ceil(hei / 2) * 0.7 * 52) * scale + j * 52 * 0.7 * scale, 0.7 * scale, 0.7 * scale, 0, block_color[0 + side * 2], draw_get_alpha())
				else if (cards[card_index][j][i] = 2) draw_sprite_ext(spr_blocks, 2, x1 + (155.6 - ceil(len / 2) * 0.7 * 52) * scale + i * 52 * 0.7 * scale, y1 + (155.6 - ceil(hei / 2) * 0.7 * 52) * scale + j * 52 * 0.7 * scale, 0.7 * scale, 0.7 * scale, 0, block_color[1 + side * 2], draw_get_alpha())
			}
		}
	}
	//draw_sprite_ext(spr_cardvalue, 0, x1 + 8 * scale, y1 + 393 * scale, scale, scale, 0, -1, draw_get_alpha())
	draw_set_color(0)
	draw_roundrect_ext(x1 + (53 - 43) * scale, y1 + (393 + 39 - 22 - 70 - 15) * scale, x1 + (53 + 43) * scale, y1 + (393 + 39 - 22 - 70 - 10 + 75) * scale, 20 * scale, 20 * scale, 0)
	draw_set_font(fnt_gambit_card_big)
	draw_set_color(c_white)
	draw_text_transformed(x1 + (53 - string_width(value) / 2) * scale, y1 + (393 + 39 - 22 - 75) * scale, value, scale, scale, 0)
	if (card_index != -1) draw_specialbar(x1 + 102 * scale, y1 + 337 * scale, side, special_points[card_index], 0.5 * scale, 2)
	if (selected) draw_sprite_ext(spr_card_select_name, 0, x1 - 20 * scale, y1 - 100 * scale, scale, scale, 0, make_color_rgb(200, 200, 200), draw_get_alpha())
	draw_set_font(fnt_blitz_big)
	if (string_width(name) > 334) name_scale = 267 / string_width(name)
	draw_set_color(c_dkgrey)
	draw_set_halign(fa_center)
	if (selected) draw_text_transformed(x1 + (155.6) * scale, y1 + (-100 + 5) * scale, name, name_scale * scale, scale, 0)
	draw_set_halign(fa_left)
}