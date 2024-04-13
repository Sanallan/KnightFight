/// @description Insert description here
// You can write your code in this editor
if gamepad_button_check(0,gp_start) {
	room_goto(rm_DevMenu);	
}
if gamepad_button_check(0,gp_select) {
	room_restart();
}
