/// @description

if (timer==clamp(timer,60,180))	{
	//Conver timer to a value between 0 and 1
	var t=timer-60
	t=t/120;
	alpha=scr_easeInQuad(t);
}
if (timer==clamp(timer,180,300))	{
	var t=timer-180;
	t=t/120;
	alpha=min(2*scr_easeOutQuad(1-t),1);
}

if (timer==clamp(timer,420,540))	{
	textShowing=1;
	//Conver timer to a value between 0 and 1
	var t=timer-420
	t=t/120;
	alpha=scr_easeInQuad(t);
}
if (timer==clamp(timer,540,660))	{
	var t=timer-540;
	t=t/120;
	alpha=min(2*scr_easeOutQuad(1-t),1);
}

audio_sound_gain(static,alpha,0);
timer+=1;

if (timer>660)
	instance_destroy();
	
//Randomly flicker
flicker=false;
if (irandom(60)==0)
	flicker=true;
	
if (flicker)
	audio_sound_gain(static,0,0);