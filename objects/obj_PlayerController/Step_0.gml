//get inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);
dash = 1 + keyboard_check( ord("Z"));
keyAttack = keyboard_check(ord("X"));

switch (state){
	case PLAYERSTATE.FREE: PlayerState_Free();
	break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack();
	break;
	case PLAYERSTATE.ATTACK_SPIN: PlayerState_Attack_Spin();
	break;
}