function draw_specialbar(){
	var x1, y1, side, amount, scale, split, block_color;
	x1 = argument[0]
	y1 = argument[1]
	side = argument[2]
	amount = argument[3]
	scale = 0.7
	if (argument_count > 4) scale = argument[4]
	if (argument_count > 5) split = argument[5]
	if (side = 0) {
		block_color = 434943
	} else {
		block_color = 16771337
	}
	
	for (var i = 0; i < amount; i++) {
		draw_sprite_ext(spr_blocks, 1, x1 + i * (52 + 4 * (split = 2)) * scale + 20 * (split = 1) * ((i) div 5) * scale, y1, scale, scale, 0, block_color, draw_get_alpha())
	}
}