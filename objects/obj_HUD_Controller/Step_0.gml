//Keyboard Controls
if (global.any_keyboard_pressed = 1) {
	if (keyboard_check(ord("Z")) = 1) {
		keyZPressed = 1; } else { keyZPressed = 0; }

	if (keyboard_check(ord("X")) = 1) {
		keyXPressed = 1; } else { keyXPressed = 0; }

	if (keyboard_check(ord("C")) = 1) {
		keyCPressed = 1; } else { keyCPressed = 0; }

	if (keyboard_check(ord("S")) = 1) {
		keySPressed = 1; } else { keySPressed = 0; }
}

//Gamepad Controls
if (global.any_controller_pressed = 1) {
	if (gamepad_button_check(0,gp_face3) = 1) {
		buttonXPressed = 1; } else { buttonXPressed = 0; }

	if (gamepad_button_check(0,gp_face1) = 1) {
		buttonAPressed = 1; } else { buttonAPressed = 0; }

	if (gamepad_button_check(0,gp_face2) = 1) {
		buttonBPressed = 1; } else { buttonBPressed = 0; }

	if (gamepad_button_check(0,gp_face4) = 1) {
		buttonYPressed = 1; } else { buttonYPressed = 0; }
}