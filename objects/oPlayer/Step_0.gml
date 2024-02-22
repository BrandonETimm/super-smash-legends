switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
	case PLAYERSTATE.STUN: PlayerState_Stunned(); break;
	case PLAYERSTATE.SHIELD: PlayerState_Shield(); break;
}
if shield < maxShield shield+=0.025;
if iFrames > 0 iFrames--;
if state != PLAYERSTATE.ATTACK animStarted = false;
if state == PLAYERSTATE.STUN freeFall = false;