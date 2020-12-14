/// @description

global.sticks+=1;
instance_destroy();
scr_dialogueClear();

var dia=choose("I got the stick","It's a stick","Boiled sticks for dinner","What's brown and sticky? A stick HAH PLEASE GOD KILL ME NOW","There's only so much to say about a stick","Well it's a stick alright");

var roll=irandom(100);
if (roll==0)
	dia="Fucking fuck fuck fuck fuck shit fuck I hate my life shit";
else if (roll==1)
	dia="DisOmikron is the greatest sound designer to ever live";
	
scr_addDialogue(dia);

var mid=id;
with (obj_stickManager)
	ds_map_set(stickMap,mid,1);
	
if (global.sticks==5)	{
	scr_flagBitmask(Bitmasks.FoundSticks);
	scr_dialogueClear();
	scr_addDialogue("Well that's all the sticks ready for dinner");
	scr_addDialogue("NEW TASK: Boil sticks for dinner");
}

var snd=choose(collect_1,collect_2);
audio_play_sound(snd,0,false);