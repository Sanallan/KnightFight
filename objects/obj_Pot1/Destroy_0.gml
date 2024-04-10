/// @description Spawn Debris
repeat(6)instance_create_depth(x,y,12,obj_Debris_Pot1);
repeat(4)instance_create_depth(x,y,10,obj_DustDebris);
instance_create_depth(x,y,5,obj_Wham);

audio_play_sound(snd_PotBreak,0,false);