event_inherited();
if place_meeting(x+speed,y,oWall) instance_destroy();
if life < 60
{	
	if place_meeting(x,y+1,oWall)
	{
		if !instance_exists(playerId.specialid)
		{
			newDag = instance_create_layer(x,y,"Abilities",oDaggerJ);
			playerId.specialid = newDag
		}
		instance_destroy();
	}
	else if place_meeting(x,y+4,oWall) while !place_meeting(x,y+1,oWall) y += 1;
	else y += 4;
}