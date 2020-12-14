if (global.previousRoom==rm_backGarden)	{
	image_xscale=-1;
	x=905;
	if (scr_checkBitmask(Bitmasks.FoundSticks) and !scr_checkBitmask(Bitmasks.BoilingSticks))
		scr_addDialogue("Gotta boil these FUCKIN sticks for dinner AGAIN");
}
if (scr_checkBitmask(Bitmasks.BoiledSticks))
	x=603;