/// @description Light Mask

event_inherited();

if (!surface_exists(lightSurface)){
    lightSurface = surface_create(global.width, global.height);
};

//Uses the new surface to draw a black rectangle then draw a subtracting sprite.
if(lightsOff){
	surface_set_target(lightSurface);
	draw_clear_alpha(c_black,lightIntensity);
	gpu_set_blendmode(bm_subtract);
		if(on) draw_sprite(lightSprite,0,x,y);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();

	draw_surface(lightSurface,0,0);
};