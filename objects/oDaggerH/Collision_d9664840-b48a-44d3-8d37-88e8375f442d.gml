if playerId != other.id && other.iFrames == 0
{
	if other.state != PLAYERSTATE.SHIELD
	{
		other.knockbackx = 8*dir*(1+0.015*other.hp);
		other.knockbacky = -4*(1+0.015*other.hp);
		other.hp = min(other.hp+8,999)
		other.state = PLAYERSTATE.STUN;
		other.stunDur = 10;
	}
	else other.shield = max(other.shield-(8/2),0)
	
	if !instance_exists(playerId.specialid)
	{
		daggerId = instance_create_layer(x,y,"Abilities",oDaggerJ);
		daggerId.ysp = -6;
		daggerId.playerId = playerId;
		playerId.specialid = daggerId;
		audio_play_sound(soundKatUpDagger,1,false);
	}
	audio_play_sound(soundKatThowHit,1,false);
	instance_destroy();
}