/// @description Draw Full Project
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

//Extra
for(var i = 0; i < ds_list_size(containing); i++){
	draw_sprite(ds_list_find_value(containing,i),0,x,y-4*i);
};