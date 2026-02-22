/// @description Light Mask

event_inherited();

//draw_sprite(darkSprite,0,0,0);

if (!surface_exists(lightSurface)){
    lightSurface = surface_create(100,100);
}

surface_set_target(lightSurface);
draw_clear_alpha(c_black,1);
/*gpu_set_blendmode(bm_subtract);
draw_circle(x, y, radius, false);
gpu_set_blendmode(bm_normal);*/
surface_reset_target();