/// @description view enable and room parameters
// You can write your code in this editor
view_enabled=true;
view_visible[0]=true;

view_width = room_width / 2;
view_height = room_height / 2;

window_scale=3;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

// testing on screen text
draw_set_font(fnt_gui_text);
score = 0;
lives = 3;

randomize() // GM22 uses a seed for debugging, this function removes it

//need to run for coordinates for the spawn script
if (instance_exists(obj_ship))
{
	var _x = clamp(obj_ship.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(obj_ship.y - view_height / 2, 0, room_height - view_height);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd = .1;
	camera_set_view_pos(view, lerp(_cur_x, _x, _spd), lerp(_cur_y, _y, _spd));
	
}


//for spawn script
global.cameraX = camera_get_view_x(view);
global.cameraY = camera_get_view_y(view);
global.cameraWidth = room_width / 2;
global.cameraHeight = room_height / 2;