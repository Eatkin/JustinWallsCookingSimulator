/// @description

if (scr_checkBitmask(Bitmasks.PoisonedFamily))	{
	scr_dialogueClear();
	scr_addDialogue("Wife: Read the FUCKING DESCRIPTION",Sounds.Female);
	scr_addDialogue("Wife: Oh that password by the way, I think it's in all caps.",Sounds.Female);
	scr_addDialogue("Wife: That's the kind of thing only a total FUCKHEAD like you would do.",Sounds.Female);
	scr_addDialogue("NEW TASK: Cry in the corner");
}
else	{
	scr_dialogueClear();
	scr_addDialogue("Wife: This is fucking shit. You're pathetic.",Sounds.Female);
	scr_addDialogue("Wife: And why do none of us have arms?",Sounds.Female);
	scr_addDialogue("NEW TASK: Cry in the corner");
}