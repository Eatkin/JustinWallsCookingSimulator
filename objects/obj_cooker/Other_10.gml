/// @description

if (place_meeting(mouse_x,mouse_y,obj_boiledSticks))
	exit;

if (!scr_checkBitmask(Bitmasks.FoundSticks))	{
	scr_dialogueClear();
	scr_addDialogue("We live in a world that merely has physical imitations of perfect forms");
}
else if (!scr_checkBitmask(Bitmasks.BoilingSticks))	{
	scr_dialogueClear();
	if (scr_checkBitmask(Bitmasks.GotPoison))	{
		scr_addDialogue("Guess I'll put this rat poison in and kill my entire family then LOL");
		scr_flagBitmask(Bitmasks.PoisonedFamily);
	}
	else
		scr_addDialogue("These sticks smell like poverty");
	scr_flagBitmask(Bitmasks.BoilingSticks);
	instance_activate_object(obj_boiledSticks);
}
else	{
	scr_dialogueClear();
	scr_addDialogue("I'm done with this piece of shit oven for now");
}