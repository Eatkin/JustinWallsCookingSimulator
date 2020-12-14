if (global.previousRoom==rm_lock or global.previousRoom==rm_shed)	{
	x=846;
	image_xscale=-1;
}

if (!scr_checkBitmask(Bitmasks.FoundSticks))
	scr_addDialogue("Gotta grab some INGREDIENTS FOR dINNERR FUCK");