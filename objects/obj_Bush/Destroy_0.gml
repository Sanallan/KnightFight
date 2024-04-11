/// @description Spawn Debris
repeat(6)instance_create_depth(x,y,12,obj_Debris_Leaves);
repeat(4)instance_create_depth(x,y,10,obj_DustDebris);
instance_create_depth(x,y,-2,obj_Wham);
instance_create_depth(x,y,depth,obj_Bush_Chopped);

audio_sound_pitch(snd_Bush_Rustle,random_range(0.9,1.1));
audio_play_sound(snd_Bush_Rustle,0,false);