function draw_tape(x1, y1, length, scale){
	draw_sprite_ext(spr_tape_normal, 0, x1, y1, scale, scale, 0, -1, draw_get_alpha())
	draw_sprite_ext(spr_tape_normal, 1, x1 + 80 * scale, y1, (length - 160) / 80 * scale, 1, 0, -1, draw_get_alpha())
	draw_sprite_ext(spr_tape_normal, 2, x1 + (length - 80) * scale, y1, scale, scale, 0, -1, draw_get_alpha())
}