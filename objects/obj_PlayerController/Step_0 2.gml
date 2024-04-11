//Keyboard Inputs
if (global.any_keyboard_pressed = 1) {
	//Right
	rightKey = keyboard_check(vk_right);
	//Left
	leftKey = keyboard_check(vk_left);
	//Up
	upKey = keyboard_check(vk_up);
	//Down
	downKey = keyboard_check(vk_down);
	//Other Keys
	dash = 1 + keyboard_check( ord("Z"));
	keyAttack = keyboard_check(ord("X"));
	keyInteract = keyboard_check(ord("C"));
}

//Controller Inputs
if (global.any_controller_pressed = 1) {
	//Right
	if (gamepad_axis_value(0,gp_axislh) > 0) {
		rightKey = 1;
	} else {
		rightKey = 0;
	}
	//Left
	if (gamepad_axis_value(0,gp_axislh) < 0) {
		leftKey = 1;
	} else {
		leftKey = 0;
	}
	//Up
	if (gamepad_axis_value(0,gp_axislv) < 0) {
		upKey = 1;
	} else {
		upKey = 0;
	}
	//Down
	if (gamepad_axis_value(0,gp_axislv) > 0) {
		downKey = 1;
	} else {
		downKey = 0;
	}
	//Other Keys
	dash = 1 + gamepad_button_check(0,gp_face2);
	keyAttack = gamepad_button_check(0,gp_face1);
	keyInteract = gamepad_button_check(0,gp_face3);
}

//Switch States
switch (state) {
	case PLAYERSTATE.FREE: PlayerState_Free();
	break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack();
	break;
	case PLAYERSTATE.ATTACK_SPIN: PlayerState_Attack_Spin();
	break;
}

//Visual Depth Management
depth = -bbox_bottom;