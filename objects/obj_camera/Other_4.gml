/// @description view enable and room parameters
// You can write your code in this editor
view_enabled=true;
view_visible[0]=true;

if(room == rm_level01){
	repeat(15){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
	alarm[1] = room_speed;
}