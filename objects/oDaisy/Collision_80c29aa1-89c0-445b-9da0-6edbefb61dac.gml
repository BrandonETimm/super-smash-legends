if playerId != other.id && other.iFrames == 0 && hit = false
{	
	if ysp > 0
	{
		if other.state != PLAYERSTATE.SHIELD
		{
			other.knockbackx = 6*dir*(1+0.015*other.hp);
			if place_meeting(other.x,other.y+1,oWall) other.knockbacky = -28*(1+0.015*other.hp);
			else other.knockbacky = 8*(1+0.015*other.hp);			
			other.hp = min(other.hp+16,999)
			other.stunDur = 20;
			other.state = PLAYERSTATE.STUN;
		}
		else other.shield = max(other.shield-(16/2),0)
	}
	else
	{
		if other.state != PLAYERSTATE.SHIELD
		{
			other.knockbackx = 4*dir*(1+0.015*other.hp);
			other.knockbacky = -10*(1+0.015*other.hp);
			other.hp = min(other.hp+8,999)
			other.stunDur = 10;
			other.state = PLAYERSTATE.STUN;
		}
		else other.shield = max(other.shield-(8/2),0)
	}
	hit = true;
}