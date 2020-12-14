/// @description

audio_stop_all();
instance_destroy(obj_music);

if (!scr_checkBitmask(Bitmasks.PoisonedFamily))	{
	instance_create_layer(0,0,layer,obj_Ending1text);
	instance_destroy();
	exit;
}
if (!instance_exists(obj_Ending2text))
	instance_create_layer(0,0,layer,obj_Ending2text);

	
//Did you come here looking for answers?
//You should feel bad you cheater
text[0]="YOUTUBE";
text[1]="H45PIi5mcrU";

timer=0;
alpha=0;
textShowing=0;

static=audio_play_sound(tv_static,0,true);
audio_sound_gain(static,0,0);

flicker=false;