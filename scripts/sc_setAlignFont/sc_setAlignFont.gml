/// @description General purpose function for switching text properties.
/// @param {int64}  halign				The horizontal alignment of the text.
/// @param {int64}  valign				The vertical alignment of the text.
/// @param {int64}  font				The font to be switched to.
/// @return {void}
function sc_setAlignFont(halign,valign,font){
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_font(font);
}