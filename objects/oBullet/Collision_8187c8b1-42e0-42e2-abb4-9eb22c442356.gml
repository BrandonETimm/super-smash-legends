if playerId != other.id && other.iFrames == 0
{	
	if other.state != PLAYERSTATE.SHIELD
	{
		other.knockbackx = 8*dir*(1+0.015*other.hp);
		other.knockbacky = -2*(1+0.015*other.hp);
		other.hp = min(other.hp+6,999)
		other.stunDur = 10;
		other.state = PLAYERSTATE.STUN;
	}
	else other.shield = max(other.shield-(6/2),0)
	instance_destroy();
}