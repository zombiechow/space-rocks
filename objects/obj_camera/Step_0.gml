/// @description step event to transition from start and gameover rooms
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_level01);
			break;

		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}


if(room == rm_level01){
	if(score >= 1000){
		room_goto(rm_win);
	}
	
	if(lives < 0){
		room_goto(rm_gameover);
	}
}

