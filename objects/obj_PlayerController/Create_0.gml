/// @description Insert description here
// You can write your code in this editor
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

yspd = 0;
xspd = 0;
moveSpd = 5;
fric = 0.9; // 0 = instantly stops; 1 = no friction at all (keep values between 0 and 1)
attack = 0;
rollSpd = 15;
dashArray = [];
canDash = true;
dashCooldown = 120;
dashTimerInitial = 15;
dashTimer = dashTimerInitial;


face = 6
sprite = [spr_Knight_S_Right, spr_Knight_S_UpRight, spr_Knight_S_Up, spr_Knight_S_UpLeft, spr_Knight_S_Left,
			spr_Knight_S_DownLeft, spr_Knight_S_Down, spr_Knight_S_DownRight];
spriteHolding = [spr_Knight_H_Right, spr_Knight_H_UpRight, spr_Knight_H_Up, spr_Knight_H_UpLeft, spr_Knight_H_Left,
			spr_Knight_H_DownLeft, spr_Knight_H_Down, spr_Knight_H_DownRight];
spriteIdle = [spr_Knight_Right, spr_Knight_UpRight, spr_Knight_Up, spr_Knight_UpLeft, spr_Knight_Left,
			spr_Knight_DownLeft, spr_Knight_Down, spr_Knight_DownRight];

attackSprite = [spr_Knight_A_Right, spr_Knight_A_UpRight, spr_Knight_A_Up, spr_Knight_A_UpLeft, 
				spr_Knight_A_Left, spr_Knight_A_DownLeft, spr_Knight_A_Down, spr_Knight_A_DownRight];
attackHbox = [spr_Knight_A_Right_Hbox, spr_Knight_A_UpRight_Hbox, spr_Knight_A_Up_Hbox, spr_Knight_A_UpLeft_Hbox, 
				spr_Knight_A_Left_Hbox, spr_Knight_A_DownLeft_Hbox, spr_Knight_A_Down_Hbox, spr_Knight_A_DownRight_Hbox];
				
spriteRolling = [];



sprite_index = sprite[face];

state = PlayerState_Free;
hitByAttack = ds_list_create();

