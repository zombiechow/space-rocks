/// @description collision with ship
// You can write your code in this editor

other.armor -= 1;
instance_destroy();
if(sprite_index == spr_asteroid_large){
	repeat(2){
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_med;
		audio_play_sound(a_explode, 3, false)
	}
} else if(sprite_index == spr_asteroid_med){
	repeat(4){
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_small;
		audio_play_sound(a_explode_small_rocks, 3, false)
	}
} else if(sprite_index == spr_asteroid_small){
	audio_play_sound(a_explode_even_smaller_rocks, 3, false)
}
repeat(10){
instance_create_layer(x, y, "Instances", obj_debris);
}




//if(sprite_index == spr_asteroid_large){
//	audio_play_sound(a_explode, 3, false)
//} else if(sprite_index == spr_asteroid_med){
//	audio_play_sound(a_explode_small_rocks, 3, false)
//} else if(sprite_index == spr_asteroid_small){
//	audio_play_sound(a_explode_even_smaller_rocks, 3, false)
//}


