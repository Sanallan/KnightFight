// Choose Input
if (global.any_keyboard_pressed = 1) {
	// Mouse Cursor Control
	x = mouse_x;
	y = mouse_y;
} else {
	// Gamepad Cursor Control
	x = x+(15*gamepad_axis_value(0,gp_axislh));
	y = y+(15*gamepad_axis_value(0,gp_axislv));	
}

// Detect Clicking
if mouse_check_button(mb_left) || gamepad_button_check(0,gp_face1) {
	global.clicking = true;
} else {
	global.clicking = false;	
}
