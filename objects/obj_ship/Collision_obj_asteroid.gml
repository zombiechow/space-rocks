/// @description collision with asteroids
// You can write your code in this editor
//instance_destroy();

if(armor <= 0){
	instance_destroy()
	lives -= 1;
	audio_play_sound(a_hero_explode, 2, false);

	repeat(10){
		instance_create_layer(x, y, "Instances", obj_debris);
	}

	if(lives >=0){
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_ship);
	}
}



