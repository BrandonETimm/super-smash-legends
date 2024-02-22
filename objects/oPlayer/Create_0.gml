state = PLAYERSTATE.FREE;
champ = CHAMPION.JINX;
hit = ds_list_create();
respawnId = instance_create_layer(x,y+32,"Abilities",oRespawnPlat);
switch(champ)
{
	case CHAMPION.ZED: mask_index = sZed; break;
	case CHAMPION.KAT: mask_index = sKat; break;
	case CHAMPION.WUKONG: mask_index = sWukong; break;
	case CHAMPION.AKALI: mask_index = sAkali; break;
	case CHAMPION.JINX: mask_index = sJinx; break;
	case CHAMPION.IVERN: mask_index = sIvern; break;
}
