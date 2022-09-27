function draw_text_transformed_outlined(){
	//draw_text_transformed_outlined(x, y, outline color, string color, string, xscale, yscale, angle, border width)  
	var xx,yy, xscale, yscale, angle, border;  
	xx = argument[0];  
	yy = argument[1];  
	xscale = argument[5];
	yscale = argument[6];
	angle = argument[7];
	border = argument[8];
  
	//Outline  
	draw_set_color(argument[2]);  
	draw_text_transformed(xx+border * xscale, yy+border * yscale, argument[4], xscale, yscale, angle);  
	draw_text_transformed(xx-border * xscale, yy-border * yscale, argument[4], xscale, yscale, angle);  
	draw_text_transformed(xx,   yy+border * yscale, argument[4], xscale, yscale, angle);  
	draw_text_transformed(xx+border * xscale,   yy, argument[4], xscale, yscale, angle);  
	draw_text_transformed(xx,   yy-border * yscale, argument[4], xscale, yscale, angle);  
	draw_text_transformed(xx-border * xscale,   yy, argument[4], xscale, yscale, angle);  
	draw_text_transformed(xx-border * xscale, yy+border * yscale, argument[4], xscale, yscale, angle);  
	draw_text_transformed(xx+border * xscale, yy-border * yscale, argument[4], xscale, yscale, angle);  
  
	//Text  
	draw_set_color(argument[3]);  
	draw_text_transformed(xx, yy, argument[4], xscale, yscale, angle);  
}