/// @description Draw Fadeout and Debug

//Fadeout
var c = c_black;
var width = camera_get_view_width(view_camera[0]);
var height = camera_get_view_height(view_camera[0]);

draw_set_alpha(alarm[1]);
draw_rectangle_colour(0, 0, width, height, c, c, c, c, false);

//Debug Stuff

draw_set_alpha(1);

draw_text(x,y,string(minTenPlace)+string(minOnePlace)+":"+string(tenPlace)+string(onePlace));

draw_text(x,y+16,string(alarm[0]/global.framesToSeconds));

draw_text(x,y+32,string(o_orderManager.orderGapMin));

draw_text(x,y+48,string(o_orderManager.orderQuota));
draw_text(x,y+64,string(o_orderManager.ordersDone));

if(global.done){
	if(success){
		c = c_green;
	}else{
		c = c_red;
	};
	draw_rectangle_color(0,0,480,270,c,c,c,c,false);
};