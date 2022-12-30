// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_laser_effect(){
var _effect = instance_create_layer(x, y, "Effects", obj_explosion_particle);
image_angle = irandom(100);
_effect.image_xscale = .5;
_effect.image_yscale = .5;
_effect.image_angle = image_angle;
}