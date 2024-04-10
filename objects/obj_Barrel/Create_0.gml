/// @description Choose Barrel Sprite
sprite_index = choose(spr_Barrel1,spr_Barrel2,spr_Barrel3);
depth = -bbox_bottom; 

hit = 0;

state  = BOXSTATE.NONE;

enum BOXSTATE {
	NONE,
	HIT
}