//get inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check( vk_left);
upKey = keyboard_check( vk_up);
downKey = keyboard_check( vk_down);
dash = 1 + keyboard_check( ord( "Z" ));

//player movement
#region
//get the direction
var _horizKey = rightKey - leftKey;
var _vertKey = downKey - upKey;
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
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
	//sprite control
	//player facing correct direction
	face =  round(moveDir/45);
	
	//set the player sprite
	sprite_index = sprite[face];
	image_speed = 1.2;

} else if (_horizKey = 0 && _vertKey = 0) {
	image_speed = 0;
	image_index = 0;
}
#endregion

if (dash = 2) {
	image_speed = 1.6;
}