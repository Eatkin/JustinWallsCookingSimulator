/// @description

if (!ds_list_empty(dialogue))	{
	draw_set_alpha(0.8);
	draw_set_colour(c_black);
	draw_rectangle(0,90,240,135,false);
	draw_set_colour(c_white);
	var text=ds_list_find_value(dialogue,0);
	var sep=string_height("A")-5;
	draw_text_ext(5,92,text,sep,230);
	draw_set_alpha(1);
}