/// @description

//Randomly flicker
if (flicker)
	exit;

var staticOn=false;
if (timer==clamp(timer,60,300) or timer==clamp(timer,420,660))
	staticOn=true;
	
if (staticOn)	{
	shader_set(shd_static);
	var _t=shader_get_uniform(shd_static,"time");
	shader_set_uniform_f(_t,timer);
	draw_rectangle(0,0,room_width,room_height,false);
	shader_reset();
	
	draw_set_alpha(alpha);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width*0.5,room_height*0.5,text[textShowing]);
	draw_set_alpha(1);
}