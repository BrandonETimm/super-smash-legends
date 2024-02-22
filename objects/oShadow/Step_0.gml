if life > 0 life--;
else 
{	
	audio_play_sound(soundZedGone,1,false);
	instance_destroy();
}