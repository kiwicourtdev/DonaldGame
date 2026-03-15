/// @description Draw Sprite and Button Text

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

if(hovering){
	sc_setAlignFont(fa_left,fa_bottom,f_vcr10);
	draw_text_color(x+boxGap,y-boxGap-boxOffset,desc,c,c,c,c,image_alpha);
	var strHeight = string_height(desc);
	draw_set_font(f_vcr16);
	draw_text_color(x+boxGap,y-boxGap-boxOffset-strHeight,name,c,c,c,c,image_alpha);
}