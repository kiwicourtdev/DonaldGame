/// @description Draw Debug

/*/Fadeout
var c = c_black;

if(fadeWait){
	fade = fadeOutMultiple-(fadeOutMultiple*abs(fadeOutMax-alarm[1]*2))/(fadeOutMax);
	draw_set_alpha(fade);
	draw_rectangle_colour(0, 0, global.width, global.height, c, c, c, c, false);
};

draw_set_alpha(1);

//Debug Stuff

c = c_lime;


draw_text_color(x,y,string(minTenPlace)+string(minOnePlace)+":"+string(tenPlace)+string(onePlace),c,c,c,c,1);

draw_text_color(x,y+16,string(alarm[0]/global.framesToSeconds),c,c,c,c,1);

draw_text_color(x,y+32,string(o_orderManager.orderGapMin),c,c,c,c,1);

draw_text_color(x,y+48,string(o_orderManager.orderQuota),c,c,c,c,1);
draw_text_color(x,y+64,string(o_orderManager.ordersDone),c,c,c,c,1);

draw_text_color(x,y+80,string(fade),c,c,c,c,1);
draw_text_color(x,y+96,string(alarm[1]),c,c,c,c,1);

/*if(global.done){
	if(success){
		c = c_green;
	}else{
		c = c_red;
	};
	draw_rectangle_color(0,0,480,270,c,c,c,c,false);
};