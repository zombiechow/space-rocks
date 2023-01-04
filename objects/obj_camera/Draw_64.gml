/// @description Text on Screen for each room
switch(room){
	case rm_start: 
		var c = c_yellow; // using stock color for draw_text_transformed_color
		display_set_gui_size(view_width, view_height); // set view ratio to allow simpler placement and follow camera
		draw_set_halign(fa_center); // center align text
		draw_text_transformed_color(
			480, 100, "SPACE ROCKER",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			480, 150,
			string_replace_all(@"Score 1K to win!
			
			Controls:
			W: THRUST FORWARD
			A/D: LEFT/RIGHT
			S: BACKUP
			L/R CTRL: SHOOTS
			
			MOUSE:
			RIGHT CLICK: THRUST SHIP TOWARDS CURSOR!
			LEFT CLICK: SHOOT
			
			>> PRESS ENTER TO START <<", "\t", "")
				
		);
		draw_set_halign(fa_left); // set draw back to left align for further calls
		break;
	
	case rm_level01:
	// You can write your code in this editor
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "lives: "+string(global.lives));
		draw_text(20, 60, "ARMOR: "+string(obj_ship.armor));
		//draw_text(20,60, "room_width: "+string(room_width));
		//draw_text(20,80, "room_height: "+string(room_height));
		//draw_text(20,100, "cameraX: "+string(camera_get_view_x(view)));
		//draw_text(20,120, "cameraY: "+string(camera_get_view_y(view)));
		//draw_text(20,60, "view_width: "+string(global.cameraWidth));
		//draw_text(20,80, "view_height: "+string(global.cameraHeight));
	// display_set_gui_size(view_wport[0], view_hport[0]);
		display_set_gui_size(view_width, view_height); //fed the view variables from Create script
		break;
	
	case rm_win:
		var c = c_lime; // using stock color for draw_text_transformed_color
		display_set_gui_size(view_width, view_height); // set view ratio to allow simpler placement and follow camera
		draw_set_halign(fa_center); // center align text
		draw_text_transformed_color(
			480, 120, "YOU WON!",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			480, 250,
			">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left); // set draw back to left align for further calls
		break;
	
	case rm_gameover:
		var c = c_lime; // using stock color for draw_text_transformed_color
		display_set_gui_size(view_width, view_height); // set view ratio to allow simpler placement and follow camera
		draw_set_halign(fa_center); // center align text
		draw_text_transformed_color(
			480, 150, "GAME OVER!",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			480, 250,
			"FINAL SCORE: "+string(score)
		);
		draw_text(
			480, 300,
			">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left); // set draw back to left align for further calls
		break;
}