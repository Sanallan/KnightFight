/// @description Spawn Debris
repeat(6)instance_create_depth(x,y,12,obj_Debris_Barrel);
repeat(4)instance_create_depth(x,y,10,obj_DustDebris);
instance_create_depth(x,y,5,obj_Wham);

audio_play_sound(snd_BarrelBreak,0,false);