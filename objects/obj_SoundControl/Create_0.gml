/// @description Insert description here
// You can write your code in this editor

//Global Sound Values
max_distance_to_be_heard = 500;
start_dropping_off_at = 500;
multiplier = 2;

audio_falloff_set_model(audio_falloff_exponent_distance);
audio_listener_orientation(0,-1,0,0,0,-1);