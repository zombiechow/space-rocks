// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouse_controls(){
var _mouse_direction = point_direction(x, y, mouse_x, mouse_y);
var _mthrust = mouse_check_button(mb_right)
if (_mthrust){
	motion_add(image_angle, acceleration);
	image_angle = _mouse_direction;
	image_index = _mthrust;
	if (speed > max_speed){
		speed = max_speed;
		}
	var _offset = random_range(-4, 4);
	var _length = -16;
	var _x = x + lengthdir_x(_length, image_angle)  + _offset;
	var _y = y + lengthdir_y(_length, image_angle) + _offset;
	instance_create_layer(_x, _y, "Effects", obj_explosion_particle);
} else {
	friction = friction_amount;
	image_index = _mthrust;
}

var _fire_laser = mouse_check_button_pressed(mb_left);
if (_fire_laser) {
	fire_laser();
}
//trying to set populsion to appear as the ship rotates accordingly up and down degrees
//var _diff = angle_difference(image_angle, _mouse_direction);
/*

if  && _mthrust == true{
        // render the fire object in the "Effect" layer of the room on top of the sprite instance
		// Here we use the image_angle to keep with the sprite rotation, length and +/- to move away from the axis, offset makes it lively
		var _offset = random_range(-1, 1);
		var _length = 10;
		var _x = x + lengthdir_x(_length, image_angle + 12)  + _offset;
		var _y = y + lengthdir_y(_length, image_angle + 12) + _offset;
		instance_create_layer(_x, _y, "Effects",obj_populsion)
} 
*/
}