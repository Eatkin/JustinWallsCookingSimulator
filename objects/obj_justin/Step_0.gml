/// @description

var hinput=max(keyboard_check(vk_right),keyboard_check(ord("D")))-max(keyboard_check(vk_left),keyboard_check(ord("A")));
var spd=1;

//Mouse hinputs
if (hinput==0)	{
	if (mouse_check_button(mb_left))	{
		if (!mouseHeld)	{
			mouseHeld=true;
			mouseX=window_mouse_get_x();
		}
		else	{
			if (abs(window_mouse_get_x()-mouseX)>5)
				dragX=sign(window_mouse_get_x()-mouseX);
		}
	}
	else	{
		mouseHeld=false;
		dragX=0;
	}
		
	hinput=dragX;
}

if (instance_exists(obj_fadeOut) or instance_exists(obj_fadeIn))
	hinput=0;

if (!place_meeting(x+hinput*spd,y,obj_block))
	x+=hinput*spd;
	
if (x!=xprevious)	{
	image_xscale=sign(x-xprevious);
	sprite_index=spr_justinRun;
	if (floor(image_index)==0 or floor(image_index)==3)	{
		if (stepOn=false)	{
			stepOn=true;
			scr_playFootstep();
		}
	}
	else
		stepOn=false;
}
else
	sprite_index=spr_justinStand;
	
if (scr_checkBitmask(Bitmasks.BoiledSticks))
	if (x>889 or x<81)	{
		//Here we create crying Justin
		var cry=instance_create_layer(x,y,layer,obj_justinCrying);
		cry.image_xscale=-image_xscale;
		instance_destroy();
	}