/// @description collision with asteroids
// You can write your code in this editor
instance_destroy();
global.lives -= 1;
repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}




