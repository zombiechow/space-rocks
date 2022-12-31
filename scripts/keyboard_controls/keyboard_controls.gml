// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function keyboard_controls(){
	
if (keyboard_check(ord("A"))){
		image_angle += 5;
		// render the fire object in the "Effect" layer of the room on top of the sprite instance
		repeat(4){
			var _offset = random_range(-1, 1);
			var _length = 10;
			var _x = x + lengthdir_x(_length, image_angle - 12)  + _offset;
			var _y = y + lengthdir_y(_length, image_angle - 12) + _offset;
			instance_create_layer(_x, _y, "Effects",obj_populsion);
		}
}

if (keyboard_check(ord("D"))){
		image_angle -= 5;
		// render the fire object in the "Effect" layer of the room on top of the sprite instance
		// Here we use the image_angle to keep with the sprite rotation, length and +/- to move away from the axis, offset makes it lively
		repeat(4){
			var _offset = random_range(-1, 1);
			var _length = 10;
			var _x = x + lengthdir_x(_length, image_angle + 12)  + _offset;
			var _y = y + lengthdir_y(_length, image_angle + 12) + _offset;
			instance_create_layer(_x, _y, "Effects",obj_populsion);
		}
}

var _kthrust = keyboard_check(ord("W"))
var _reverse_thrust = keyboard_check(ord("S"))


if (_kthrust){
		motion_add(image_angle, acceleration);
		image_index = _kthrust;
		if (speed > max_speed){
			speed = max_speed;
		}
		// render the fire object in the "Effect" layer of the room on top of the sprite instance
		repeat(4){
			var _offset = random_range(-2, 2);
			var _length = -16;
			var _x = x + lengthdir_x(_length, image_angle)  + _offset;
			var _y = y + lengthdir_y(_length, image_angle) + _offset;
			instance_create_layer(_x, _y, "Effects", obj_explosion_particle);
		}
} else {
	friction = friction_amount;
	image_index = 0
}
// set reverse to glide to halt and backup
if (_reverse_thrust){
		motion_add(image_angle, -acceleration);
		image_index = _reverse_thrust;
	    if (speed > max_speed){
			speed = max_speed - 3;
		}
		 reverse_thrust()
} else {
	friction = friction_amount;
	image_index = 0
}
var _fire_laser = keyboard_check(vk_control);
if (_fire_laser) {
	fire_laser();
}
}