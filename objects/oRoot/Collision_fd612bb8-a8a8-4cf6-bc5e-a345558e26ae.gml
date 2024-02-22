if playerId != other.id && other.iFrames == 0
{	
	if other.state != PLAYERSTATE.SHIELD
	{
		other.knockbackx = 0;
		other.knockbacky = 0;
		other.hp = min(other.hp+8,999)
		other.stunDur = 25;
		other.state = PLAYERSTATE.STUN;
	}
	else other.shield = max(other.shield-(8/2),0)
	instance_destroy();
}