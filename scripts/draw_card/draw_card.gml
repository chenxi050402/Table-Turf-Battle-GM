function draw_card(x1, y1, side, card_index, scale){
	var len, hei, block_color, value, name, name_scale;
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
	draw_set_color(make_color_rgb(56, 65, 71))
	draw_roundrect_ext(x1, y1, x1 + 342 * scale, y1 + 479 * scale, 54 * scale, 54 * scale, 0)
	draw_set_color(0)
	draw_roundrect_ext(x1 + 10 * scale, y1 + 10 * scale, x1 + (342 - 10) * scale, y1 + (479 - 10) * scale, 30 * scale, 30 * scale, 0)
	draw_set_color(c_grey)
	draw_roundrect_ext(x1 + 14 * scale, y1 + 14 * scale, x1 + (342 - 14) * scale, y1 + (479 - 14) * scale, 26 * scale, 26 * scale, 0)
	if (card_index != -1) {
		for (var i = 0; i < len; i++) {
			for (var j = 0; j < hei; j++) {
				if (cards[card_index][j][i] = 1) draw_sprite_ext(spr_blocks, 1, x1 + (172 - len * 0.7 * 26) * scale + i * 52 * 0.7 * scale, y1 + (240 - hei * 0.7 * 26) * scale + j * 52 * 0.7 * scale, 0.7 * scale, 0.7 * scale, 0, block_color[0 + side * 2], draw_get_alpha())
				else if (cards[card_index][j][i] = 2) draw_sprite_ext(spr_blocks, 2, x1 + (172 - len * 0.7 * 26) * scale + i * 52 * 0.7 * scale, y1 + (240 - hei * 0.7 * 26) * scale + j * 52 * 0.7 * scale, 0.7 * scale, 0.7 * scale, 0, block_color[1 + side * 2], draw_get_alpha())
			}
		}
	}
	draw_sprite_ext(spr_cardvalue, 0, x1 + 8 * scale, y1 + 393 * scale, scale, scale, 0, -1, draw_get_alpha())
	draw_set_font(fnt_gambit_card)
	draw_text_transformed_outlined(x1 + (8 + 39 - string_width(value) / 2) * scale, y1 + (393 + 39 - 22) * scale, make_color_rgb(46, 17, 152), c_white, value, scale, scale, 0, 1)
	if (card_index != -1) draw_specialbar(x1 + 92 * scale, y1 + 437 * scale, side, special_points[card_index], 0.327 * scale, 2)
	draw_set_font(fnt_gambit_card_big)
	if (string_width(name) > 267) name_scale = 267 / string_width(name)
	draw_set_halign(fa_center)
	draw_text_transformed_outlined(x1 + 172 * scale, y1 + 59 * scale, 0, make_color_rgb(94, 55, 255), name, name_scale * scale, scale, 0, 3)
	draw_set_halign(fa_left)
}