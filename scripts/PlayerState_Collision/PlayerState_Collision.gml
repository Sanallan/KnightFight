// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Collision(){
	var collision = false;
	
	//Entity Collision
	if place_meeting(x + xspd, y, obj_SolidParent) {
		xspd = 0;
	}
	if place_meeting(x , y + yspd, obj_SolidParent) {
		yspd = 0;
	}
	
	x += xspd * dash;
	y += yspd * dash;
	
	xspd *= fric;
	yspd *= fric;

	return collision;
}