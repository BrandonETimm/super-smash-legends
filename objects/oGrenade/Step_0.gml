ysp = min(ysp+grav,8);
xsp -= 0.1*image_xscale;
if (place_meeting(x+xsp,y,oWall))
{	
	while(!place_meeting(x+sign(xsp),y,oWall)) x+=sign(xsp);
	Explode(0);
}
x += xsp;

if (place_meeting(x,y+ysp,oWall))
{	
	while (!place_meeting(x,y+sign(ysp),oWall)) y+=sign(ysp);
	Explode(0);
}
y += ysp;
if x < -80 || x > 1040 || y > 620 || y < -160 instance_destroy();