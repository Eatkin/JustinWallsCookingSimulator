/// @description

time+=timeStep;
if (time>=1)	{
	time=1;
	room_goto(destination);
}

alpha=scr_easeInQuad(time);