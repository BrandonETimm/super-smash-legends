if playerId != other.id && other.iFrames == 0
{	
	if other.state != PLAYERSTATE.SHIELD
	{
		other.knockbackx = 6*dir*(1+0.015*other.hp);
		other.knockbacky = -2*(1+0.015*other.hp);
		other.hp = min(other.hp+4,999)
		other.stunDur = 8;
		other.state = PLAYERSTATE.STUN;
	}
	else other.shield = max(other.shield-(4/2),0)
	audio_play_sound(soundZedHitShur,1,false);
	instance_destroy();
}