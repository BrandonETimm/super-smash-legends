if life >= 125 instance_destroy();
else if life >= 100
{
	if life == 100
	{
		sprite_index = sWukongAttackSN
		image_index = 0;
		ds_list_clear(hit)
		animationTime = 25;
		animStarted = true;
		audio_play_sound(soundWukongSpin,1,false);
	}
	mask_index = sWukongAttackSNHB;
	if life == 105 || life == 110 ds_list_clear(hit);
	if life >= 115 Attack(14,-7,5,6);
	else if animationTime < 110 Attack(5,-1,5,6);
	else Attack(-5,-1,4,6);
}
life++;