/// @description Spawn Debris
repeat(6)instance_create_depth(x+50,y+50,12,obj_Debris_Pot2);
repeat(4)instance_create_depth(x+50,y+50,10,obj_Debris_Dust);
instance_create_depth(x+50,y+50,-2,obj_Wham);

audio_sound_pitch(snd_PotBreak,random_range(0.9,1.1));
audio_play_sound(snd_PotBreak,0,false);