/// @description

if (place_meeting(x,y,obj_lock))
	exit;

var snd=audio_play_sound(squeaky_door,0,false);
var fade=instance_create_layer(x,y,layer,obj_fadeOut);
fade.destination=rm_house;

if (room==rm_house)	{
	if (x<100)
		fade.destination=rm_frontGarden;
	else	{
		if (!scr_checkBitmask(Bitmasks.DrankScotch))	{
			instance_destroy(fade);
			audio_stop_sound(snd);
			scr_dialogueClear();
			scr_addDialogue("Whoa there nelly, I can't prepare dinner sober");
			scr_addDialogue("Gimme the fuckin Scotch first, fuck.");
		}
		else
			fade.destination=rm_backGarden;
	}
}

if (room==rm_backGarden)
	if (x>800)
		fade.destination=rm_shed;
		
if (room==rm_shed)
	fade.destination=rm_backGarden;