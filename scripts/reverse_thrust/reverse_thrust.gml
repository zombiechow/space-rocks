// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reverse_thrust(){
	// render the fire object in the "Effect" lassyer of the room on top of the sprite instance
	repeat(4){	
		var _offset = random_range(-1, 1);
		var _length = 10;
		var _xx = x + lengthdir_x(_length, image_angle + 12)  + _offset;
		var _yy = y + lengthdir_y(_length, image_angle + 12) + _offset;
		instance_create_layer(_xx, _yy, "Effects",obj_populsion);
		// both instance of poplusion activated for reverse thrust
		var _x = x + lengthdir_x(_length, image_angle - 12)  + _offset;
		var _y = y + lengthdir_y(_length, image_angle - 12) + _offset;
		instance_create_layer(_x, _y, "Effects",obj_populsion);
	}
}