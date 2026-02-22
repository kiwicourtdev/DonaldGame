/// @description Incrementally Draw Results Text and Then Fadeout

//Results Text

sc_setAlignFont(fa_middle,fa_middle,bigFont);

for(var i = 0; i < showing; i++){
	draw_text_color(baseX, baseY+yMod*i,show[i],c,c,c,c,image_alpha-o_timerManager.fade);
	draw_set_font(smallFont);
};