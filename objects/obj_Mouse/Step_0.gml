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
if (mouse_check_button(mb_left) || gamepad_button_check(0,gp_face1)) {
	global.clicking = true;
	image_xscale = 0.8;
	image_yscale = 0.8;
} else {
	global.clicking = false;
	image_xscale = 1;
	image_yscale = 1;
}

// Clicking Sounds
if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0,gp_face1)) {
	audio_play_sound(snd_Click_Press,1,false);
}
if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0,gp_face1)) {
	audio_play_sound(snd_Click_Release,1,false);
}