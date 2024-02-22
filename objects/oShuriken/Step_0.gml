if life > 0 life--;
else instance_destroy();
x += 8*dir;
if x < -80 || x > 1040 || y > 620 || y < -160 instance_destroy();