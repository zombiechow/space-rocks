// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_torwards_player(){
var _player_ship = instance_find(obj_ship, 0); // instance ID for player ship, instance start at 0
if _player_ship == (noone) exit; // exit if not present in room

var _player_direction = point_direction(x, y, _player_ship.x, _player_ship.y);
image_angle = direction;
motion_add(_player_direction, acceleration);
if speed > max_speed {
	speed = max_speed;
}
}