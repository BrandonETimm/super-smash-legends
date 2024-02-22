explodeid = instance_create_layer(x,y,"Abilities",oExplosion);
explodeid.image_xscale = image_xscale;
if argument0 == 0 
{
	explodeid.sprite_index = sGExplode;
	audio_play_sound(soundJinxGrenade,1,false);
}
else 
{
	explodeid.sprite_index = sRExplode;
	audio_play_sound(soundJinxRocketExplode,1,false);
}
instance_destroy();