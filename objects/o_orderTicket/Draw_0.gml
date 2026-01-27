/// @description Draw Sprite and Order Text
draw_set_font(f_vcr10);
var c = c_black;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
var previousY = y;
var bottom = 0;;
for(i = 0; i < ds_list_size(order); i++){
	var yOffset = lineWrapSep/2;
	
	if(i != 0) yOffset += string_height(orderNames[ds_list_find_value(order,i-1)])+previousY;
	previousY = yOffset;
	
	if(completed[i]) c = c_green; else c = c_black;
	
	draw_text_ext_color(x+border,y+yOffset,orderNames[ds_list_find_value(order,i)],lineWrapSep-border*2,sprite_width,c,c,c,c,image_alpha);
	
	bottom = y+yOffset+string_height(orderNames[ds_list_find_value(order,i)])+lineWrapSep/2;
};
image_yscale = (bottom-y);