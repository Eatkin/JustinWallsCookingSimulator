/// @description

time+=timeStep;
if (time>=1)	{
	time=1;
	instance_destroy();
}

alpha=1-scr_easeOutQuad(time);