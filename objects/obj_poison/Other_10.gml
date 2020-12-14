/// @description

scr_flagBitmask(Bitmasks.GotPoison);
scr_dialogueClear();
scr_addDialogue("Rat poison.");
scr_addDialogue("It will be better this way.");

if (scr_checkBitmask(Bitmasks.BoilingSticks))	{
	scr_dialogueClear();
	scr_addDialogue("Fucking already made dinner didn't I?");
	scr_addDialogue("I'll have to try again tomorrow");
}

var snd=choose(collect_1,collect_2);
audio_play_sound(snd,0,false);

instance_destroy();