/// @description

var scale=1;

var windowWidth=240;
var windowHeight=135;

if (os_browser==browser_not_a_browser)	{
	var displayWidth=display_get_width();
	var displayHeight=display_get_height();
}
else	{
	var displayWidth=browser_width;
	var displayHeight=browser_height;
}
		
while (windowWidth*(scale+1)<=displayWidth and windowHeight*(scale+1)<=displayHeight)
	scale+=1;

if (os_browser==browser_not_a_browser)
	scale-=1;

window_set_size(windowWidth*scale,windowHeight*scale);

display_set_gui_size(240,135);
mouseCursor=spr_cursorNormal;

global.previousRoom=room;

global.bitmasks=0;

randomise();

alarm[0]=1;