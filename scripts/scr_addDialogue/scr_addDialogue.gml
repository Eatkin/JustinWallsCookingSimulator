var text=argument[0];
var sound=Sounds.Male;
if (argument_count>1)
	sound=argument[1];

with (obj_talking)	{
	ds_list_add(dialogue,text);
	ds_list_add(sounds,sound);
}