/// @description

var len=array_length_1d(button);
var number=0;

for (var i=0; i<len; i+=1)
	number+=power(10,len-i-1)*button[i].myNumber;
	
//If the code is correct, do stuff
if (number==914034 and !instance_exists(obj_fadeOut))	{
	scr_flagBitmask(Bitmasks.UnlockedShed);
	with (obj_backArrow)
		event_user(0);
		
	audio_play_sound(unlock,0,false);
}