/// @description

if (place_meeting(mouse_x,mouse_y,par_interactive))
	mouseCursor=spr_cursorHover;
else
	mouseCursor=spr_cursorNormal;
	
//Resoultion 

if (os_browser!=browser_not_a_browser)	{
	var scale=1;

	var windowWidth=240;
	var windowHeight=135;

	var displayWidth=browser_width;
	var displayHeight=browser_height;
	//If we're in portrait orientation, flip the two variables
	if (displayHeight>displayWidth)	{
		var temp=displayWidth;
		displayWidth=displayHeight;
		displayHeight=temp;
	}
		
	while (windowWidth*(scale+1)<=displayWidth and windowHeight*(scale+1)<=displayHeight)
		scale+=1;

	window_set_size(windowWidth*scale,windowHeight*scale);
	
	//Scale by non-integer amount and set anti-aliasing on if we're on a very tiny screen
	if (windowWidth*2>displayWidth)	{
		window_set_size(displayWidth,displayHeight);
		display_reset(1,true);
	}
}