//@description Incrementally Draw Results Text

draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_set_font(bigFont);

for(var i = 0; i < showing; i++){
	draw_text_color(baseX, baseY+yMod*i,show[i] + results[i],c,c,c,c,image_alpha);
	draw_set_font(smallFont);
};