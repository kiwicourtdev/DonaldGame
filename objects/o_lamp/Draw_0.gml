/// @description Light Mask

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);

draw_set_alpha(1);
draw_sprite_ext(lightSprite,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite(darkSprite,0,0,0);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);