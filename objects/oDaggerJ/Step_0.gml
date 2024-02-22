if life > 0 life--;
else instance_destroy();
ysp = min(ysp+grv,8);
if place_meeting(x,y+ysp,oWall) && ysp > 0
{
	while !place_meeting(x,y+1,oWall) y += 1;
	ysp = 0;
	image_index = 1;
}
y += ysp;
if x < -80 || x > 1040 || y > 620 instance_destroy();