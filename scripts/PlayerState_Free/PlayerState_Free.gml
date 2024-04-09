function PlayerState_Free() {
//player movement
#region
//get the direction
_horizKey = rightKey - leftKey;
_vertKey = downKey - upKey;

if place_meeting(x + xspd, y, obj_SolidParent) {
	xspd = 0;
}
if place_meeting(x , y + yspd, obj_SolidParent) {
	yspd = 0;
}

//move the player
x += xspd*dash;
y += yspd*dash;

xspd *= fric;
yspd *= fric;

if (_horizKey != 0 || _vertKey != 0) {
	moveDir = point_direction(0, 0, _horizKey, _vertKey);
	
	//get the x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
	_inputLevel = clamp(_inputLevel, 0, 1);
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
	image_speed = 1.2;
	
	if (dash = 2) {
		image_speed = 1.6;
	}
	
	//sprite control
	//player facing correct direction
	face =  round(moveDir/45);
	
	//set the player sprite
	sprite_index = sprite[face];

//stop sprite from moving when no input
} else if (_horizKey = 0 && _vertKey = 0) {
	image_speed = 0;
	image_index = 0;
}
#endregion

if (keyAttack) state = PLAYERSTATE.ATTACK;
}