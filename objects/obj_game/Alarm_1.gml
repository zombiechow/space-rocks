/// @description spawn asteroids in level01
// You can write your code in this editor
if(room != rm_level01){
	exit;
}
spawn_off_camera(obj_asteroid, 1);
alarm[1] = 1*room_speed;

//if(choose(0,1) == 0){
//	//go down the side
//	var xx = choose(0, room_width);
//	var yy = irandom_range(0, room_height);
//} else {
//	// go top or bottom
//	var xx = irandom_range(0, room_width);
//	var yy = choose(0, room_height);
//}

//instance_create_layer(xx, yy, "Instances", obj_asteroid);