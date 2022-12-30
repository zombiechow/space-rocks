///@description spawn_off_camera
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@arg obj
///@arg number

function spawn_off_camera(obj,num){
	//var obj = argument0;
	//var num = argument1;
	var xx,yy;
	var pad = 360;
	//view_width = room_width/2;
	//view_height = room_height/2;

	repeat(num){
		xx = random_range(0,room_width);
		yy = random_range(0,room_height);

		while(point_in_rectangle(xx,yy, global.cameraX - pad, global.cameraY - pad, global.cameraX + global.cameraWidth + pad, global.cameraY + global.cameraHeight + pad)){
			xx = random_range(0,room_width + pad);
			yy = random_range(0,room_height + pad);
		}

	instance_create_layer(xx,yy,"Instances",obj);
	}
}