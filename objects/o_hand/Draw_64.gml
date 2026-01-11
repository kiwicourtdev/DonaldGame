/// @description Sprites

//Draw the Sprite According to Hand Side
var flip = 1;
if(!rightHand) flip = -1;

draw_sprite_ext(sprite_index,image_index,x,y,flip,1,image_angle,c_white,1);

//Draw Held Item
if(hold != pickup.empty){
	draw_sprite_ext(holdSprite,image_index,x-(8*flip),y-8,flip,1,image_angle,c_white,1);
};