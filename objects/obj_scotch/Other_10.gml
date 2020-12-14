/// @description

scr_dialogueClear();

if (scr_checkBitmask(Bitmasks.TalkedToFamily))	{
	scr_addDialogue("Scotch, the only thing that can dull the agonising pain inside of me LMAO");
	scr_addDialogue("NEW TASK: Go outside to find ingredients for dinner");
	instance_destroy();
	scr_flagBitmask(Bitmasks.DrankScotch);
}
else	{
	scr_addDialogue("Soon your warm embrace will take me, bottle of Scotch.");
	scr_addDialogue("But I need to acknowledge my horrible family first.");
}