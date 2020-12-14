/// @description

if (!audio_is_playing(crySound))	{
	var snd=choose(cry_1,cry_2,cry_3);
	if (irandom(100)==0)
		snd=cry_dontusethis;
	
	crySound=audio_play_sound(snd,0,false);
}