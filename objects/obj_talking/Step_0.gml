/// @description

if (!ds_list_empty(dialogue))	{
	timer+=1;
	var currentText=ds_list_find_value(dialogue,0);
	if (soundPlaying==noone)	{
		var snd=rocket_launch;
		if (ds_list_find_value(sounds,0)==Sounds.Male)
			snd=choose(dia_male_1,dia_male_2,dia_male_3,voice_rage);
		else
			snd=choose(dia_female_1,dia_female_2,dia_female_3,wife_1,wife_2,wife_3);
			
		soundPlaying=audio_play_sound(snd,0,true);
	}
	var strLength=string_length(currentText);
	if (timer>=strLength*3)	{
		ds_list_delete(dialogue,0);
		ds_list_delete(sounds,0);
		if (soundPlaying!=noone)
			audio_stop_sound(soundPlaying);
		
		soundPlaying=noone;
		timer=0;
	}
}