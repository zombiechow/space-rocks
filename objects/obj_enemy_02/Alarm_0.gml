/// @description Insert description here
// You can write your code in this editor
var _player_ship = instance_find(obj_ship, 0);
if (_player_ship == noone) exit;

var _distance = point_direction(x, y, _player_ship.x, _player_ship.y);
var _direction = point_direction(x, y, _player_ship.x, _player_ship.y);

if (_distance <= attack_range) {
	var _laser = instance_create_layer(x, y, "Instances", obj_enemy_laser);
	_laser.speed = 2;
	_laser.image_angle = _direction;
	_laser.direction = _direction;
}
alarm[0] = fire_rate;
