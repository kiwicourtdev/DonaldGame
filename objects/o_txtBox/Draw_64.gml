/// @description Draw Text and Box if txt is not Empty

if(txt != ""){
	
	var yy = txtY;
	if(up) yy = txtYU;
	
	sc_setAlignFont(halign,valign,font);
	
	var boxScaleX = (global.width-2*txtX)/sprite_get_width(boxSpr);
	
	var boxScaleY = (global.height-txtY-bottomBorder)/sprite_get_height(boxSpr);
	//if(up) boxScaleY = (global.height-yy-bottomBorder)/sprite_get_height(boxSpr);
	
	draw_sprite_ext(boxSpr,boxType,txtX,yy,boxScaleX,boxScaleY,image_angle,image_blend,image_alpha);
	
	draw_text_ext_color(txtX+border,yy+border,txt,sep,width,c,c,c,c,image_alpha);
};