//--HEALTH DISPLAY-------------
draw_sprite(spr_TEMP_HUD_Hearts,0,50,26);

//--SCHLOOT COUNTER------------
draw_sprite(spr_HUD_Schloot,0,45,97);
draw_text(120,115,global.schloot_collected);

//--CONTROLS-------------------
//XBOX Controls
if (global.any_controller_pressed = 1) {
	draw_sprite(spr_HUD_Button_X,buttonXPressed,1623,90);
	draw_sprite(spr_HUD_Button_A,buttonAPressed,1696,163);
	draw_sprite(spr_HUD_Button_B,buttonBPressed,1799,117);
	draw_sprite(spr_HUD_Button_Y,buttonYPressed,1712,39);
}
//PC Controls
if (global.any_keyboard_pressed = 1) {
	draw_sprite(spr_HUD_Key_Z,keyZPressed,1623,90);
	draw_sprite(spr_HUD_Key_X,keyXPressed,1696,163);
	draw_sprite(spr_HUD_Key_C,keyCPressed,1799,117);
	draw_sprite(spr_HUD_Key_S,keySPressed,1712,39);
}
//Control Prompt Overlays
draw_sprite(spr_HUD_Sword,0,1658,128);
draw_sprite(spr_HUD_Shield,0,1580,50);
draw_sprite(spr_HUD_Roll,0,1754,86);



