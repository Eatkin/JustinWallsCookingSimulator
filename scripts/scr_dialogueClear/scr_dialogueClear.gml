with (obj_talking)	{
	ds_list_clear(dialogue);
	ds_list_clear(sounds);
	if (soundPlaying!=noone)	{
		audio_stop_sound(soundPlaying);
		soundPlaying=noone;
	}
	timer=0;
}