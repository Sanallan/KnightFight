/// @description Spawn Debris
repeat(6)instance_create_depth(x+50,y+50,12,obj_Debris_Crate);
repeat(4)instance_create_depth(x+50,y+50,10,obj_Debris_Crate);
instance_create_depth(x+50,y+50,-2,obj_Wham);

repeat(choose(0,1,2))instance_create_depth(x+50,y+50,10,obj_Loot_1);
repeat(choose(0,1,2))instance_create_depth(x+50,y+50,10,obj_Loot_3);
repeat(choose(0,1,2))instance_create_depth(x+50,y+50,10,obj_Loot_5);
repeat(choose(0,1,2))instance_create_depth(x+50,y+50,10,obj_Loot_15);
repeat(choose(0,1,2))instance_create_depth(x+50,y+50,10,obj_Loot_30);

audio_sound_pitch(snd_BarrelBreak,random_range(0.9,1.1));
audio_play_sound(snd_BarrelBreak,0,false);