/// @description Determine Aspect Raitio
// You can write your code in this editor
view_width=1920/2;
view_height=1080/2;

window_scale=3;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

// testing on screen text
draw_set_font(fnt_gui_text);
score = 0;
lives = 3;