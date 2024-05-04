//Approach Standstill
hspeed = scr_approach(hspeed, 0, 0.05);
vspeed = scr_approach(vspeed, 0, 0.05);

//Depth
depth = -bbox_bottom-100;

//Calculate Z Mod + Velocity
zvelocity = zvelocity + zgrav
zmod = zmod + zvelocity

//Bounces
if (zmod > 0) {
	if (bounces = 3) {
		zvelocity = -4;	
		bounces = 2;
	} else if (bounces = 2) {
		zvelocity = -2.5;	
		bounces = 1;
	} else if (bounces = 1) {
		zvelocity = -1.5;	
		bounces = 0;
	} else if (bounces = 0) {
		zmod = 0.01;	
		oscillating = true;
	}
}

//Oscillating
if (oscillating = true) {
	t = (t + increment) mod 360;
	shift = amplitude * dsin(t);
}

//Collision
if (place_meeting(x,y,obj_SolidParent)) {
	move_bounce_all(true);
}