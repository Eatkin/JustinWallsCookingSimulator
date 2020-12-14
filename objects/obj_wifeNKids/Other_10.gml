/// @description

scr_dialogueClear();

if (!scr_checkBitmask(Bitmasks.TalkedToFamily))	{
	scr_addDialogue("Wife: Oh it's you. When is dinner ready?",Sounds.Female);
	scr_addDialogue("Wife: That password you asked for. I forgot it. Fuck you.",Sounds.Female);
	scr_addDialogue("NEW TASK: Drink Scotch");
	scr_flagBitmask(Bitmasks.TalkedToFamily);
}
else	{
	scr_addDialogue("Wife: The fuck you want?",Sounds.Female);
	scr_addDialogue("Wife: Is dinner ready yet?", Sounds.Female);
}