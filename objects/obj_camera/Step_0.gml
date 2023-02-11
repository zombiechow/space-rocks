/// @description Camera View
// You can write your code in this editor
#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if (instance_exists(obj_ship))
{
	var _x = clamp(obj_ship.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(obj_ship.y - view_height / 2, 0, room_height - view_height);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd = .1;
	camera_set_view_pos(view, lerp(_cur_x, _x, _spd), lerp(_cur_y, _y, _spd));
	//paralax
	layer_x("bk_stars_close", global.cameraX * .25);
	layer_y("bk_stars_close", global.cameraY * .25);

	layer_x("bk_stars_far", global.cameraX * 1);
	layer_y("bk_stars_far", global.cameraY * 1);

}


