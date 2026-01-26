/// @description Draw Sprite and Order Text
draw_set_font(f_vcr10);
var c = c_black;
var str = "";
for(i = 0; i < ds_list_size(order); i++){
	str += orderNames[ds_list_find_value(order,i)] + "\n\n";
};
image_yscale = string_height(str);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_text_ext_color(x+border,y+lineWrapSep/2,str,lineWrapSep-border*2,sprite_width,c,c,c,c,image_alpha);