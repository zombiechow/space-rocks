/// @description Music Start, Room Parameters
// You can write your code in this editor


//audio_play_sound(a_open, 1, true); // call audo file and loop
// music doesn't start in html5 'till you click in the window
room_music()

if(room == rm_level01){
	spawn_off_camera(obj_asteroid,40);
	//repeat(25){
	//	var xx = choose(
	//		irandom_range(0, room_width*0.3),
	//		irandom_range(room_width*0.7, room_width)
	//	);
	//	var yy = choose(
	//		irandom_range(0, room_height*0.3),
	//		irandom_range(room_height*0.7, room_height)
	//	);
	//	instance_create_layer(xx, yy, "Instances", obj_asteroid);
	//}
	alarm[1] = room_speed;
}





