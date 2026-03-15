/// @description Display Highlights

if(active){
	
	//Feed Text Into txtBox
	o_txtBox.txt = txt[counter];
	
	//Surface for Highlights
	if (!surface_exists(lightSurface)){
	    lightSurface = surface_create(global.width, global.height);
	};

	//Uses the new surface to draw a black rectangle then draw a subtracting circle.
	if(array_length(hls[counter]) > 0){
		surface_set_target(lightSurface);
		draw_clear_alpha(c_black,darkIntensity);
		gpu_set_blendmode(bm_subtract);
			for(var i = 0; i < array_length(hls[counter]); i++){
				var xx = hls[counter][i][0];
				var yy = hls[counter][i][1];
				var r = radii[counter][i];
				draw_ellipse_color(xx-r,yy-r,xx+r,yy+r,c_white,c_white,false);
			};
		gpu_set_blendmode(bm_normal);
		surface_reset_target();

		draw_surface(lightSurface,0,0);
	};
};