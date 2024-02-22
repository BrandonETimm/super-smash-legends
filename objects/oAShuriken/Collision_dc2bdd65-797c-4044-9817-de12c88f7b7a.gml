if playerId != other.id && other.iFrames == 0
{	
	if other.state != PLAYERSTATE.SHIELD
	{
		other.knockbackx = 8*dir*(1+0.015*other.hp);
		other.knockbacky = -10*(1+0.015*other.hp);
		other.hp = min(other.hp+7,999)
		other.stunDur = 10;
		other.state = PLAYERSTATE.STUN;
	}
	else other.shield = max(other.shield-(7/2),0)
	audio_play_sound(soundAkaliHitShuriken,1,false);
	instance_destroy();
}