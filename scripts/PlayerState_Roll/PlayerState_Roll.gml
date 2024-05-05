// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Roll(){
	PlayerState_Collision()
	array_push(dashArray, {x : x,y : y});
	x += xspd;
	y += yspd;
	if dashTimer-- <= 0 {
		state = PlayerState_Free;
		xspd = 0;
		yspd = 0;
		can_dash = false;
		alarm[CANDASH] = dashCooldown;
		image_index = sprite[face];
	}
}