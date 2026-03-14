/// @description Draw Ticket and Name and Order
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

draw_set_font(font);

var c = c_black;
var newY = y + border;

draw_text_ext_color(x + border, newY, name, lineWrapSep-border*2, sprite_width, c, c, c, c, image_alpha);

newY += yOffset+string_height(name)+lineWrapSep;

var imgY = newY;

var Y1 = 0;

var xMove = 1;

for(var i = 0; i < array_length(make); i++){
	if(imgY > maxY){
		xMove++;
		Y1 = imgY;
		imgY = newY;
	};
	draw_sprite_ext(make[i],0,x+(sprite_width/3*xMove),imgY,xScale,yScale,0,c_white,image_alpha);
	imgY += yOffset+sprite_get_height(make[i])*yScale;
};

newY = max(Y1, imgY);

newY += border - yOffset;

image_yscale = (newY - y)/sprite_get_height(sprite_index);