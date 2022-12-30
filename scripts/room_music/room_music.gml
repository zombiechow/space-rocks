// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
switch(room){
	case rm_start: 
		audio_stop_all();
		audio_play_sound(a_open, 1, true); // call audo file and loop
		break;
	
	case rm_level01:
		audio_stop_all();
			if(audio_is_playing(a_space_atmos)){
				audio_stop_sound(a_space_atmos);
			}
		audio_play_sound(a_space_atmos, 1, true); // call audo file and loop
		break;
	
	case rm_win:
		audio_stop_all();
		audio_play_sound(a_win_screen, 1, true); // call audo file and loop
		break;
	
	case rm_gameover:
		audio_stop_all();
		audio_play_sound(a_gameover, 1, true); // call audo file and loop
		break;
}
