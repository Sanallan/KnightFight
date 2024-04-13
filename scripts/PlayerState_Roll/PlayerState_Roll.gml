// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Roll(){
	
	_horizKey = rightKey - leftKey;
	_vertKey = downKey - upKey;
	moveDir = point_direction(0, 0, _horizKey, _vertKey);
	
	
	xspd = lengthdir_x(speedRoll, moveDir) * fric;
	yspd = lengthdir_y(speedRoll, moveDir) * fric;
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll)
	//var _collided = PlayerCollision();
	
	//update sprite
	sprite_index = spr_Knight_Climbing;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) +((1 - (moveDistanceRemaining / distanceRoll)) * _totalFrames);
	
	//change state
	if (moveDistanceRemaining <= 0) {
		state = PlayerState_Free;
	}
}