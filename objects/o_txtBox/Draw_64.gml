/// @description Draw Text and Box if txt is not Empty

if(txt != ""){
	
	sc_setAlignFont(halign,valign,font);
	
	draw_text_ext_color(txtX,txtY,txt,sep,width,c,c,c,c,image_alpha);
};