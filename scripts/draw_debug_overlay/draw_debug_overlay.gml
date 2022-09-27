function draw_debug_overlay(){
	var prevalpha = draw_get_alpha()
	var xx = 4
	var yy = window_get_height() - 7
	var is_yyc = code_is_compiled()
	var output_format = "VM"
	if (is_yyc) output_format = "Native"
	yy = draw_debug_overlay_stack(xx, yy, "Table Turf Battle Demo")
	yy = draw_debug_overlay_stack(xx, yy, string(fps) + " FPS")
	yy = draw_debug_overlay_stack(xx, yy, os_get_info()[? condstr(os_type = os_windows, "video_adapter_description", "gl_renderer_string: GL_RENDERER")])
	yy = draw_debug_overlay_stack(xx, yy, "Display: " + string(window_get_width()) + "x" + string(window_get_height()))
	yy = draw_debug_overlay_stack(xx, yy, "Executing in: " + output_format)
	draw_set_alpha(prevalpha)
}

function draw_debug_overlay_stack(x, y, str){
	draw_set_font(fnt_blitz)
	draw_set_alpha(0.5)
	draw_set_color(0)
	draw_rectangle(x - 4, y - 15, x + string_width(str) + 4, y + 7, 0)
	y -= 17
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text(x, y, str)
	y -= 6
	return y
}