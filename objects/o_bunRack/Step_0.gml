/// @description Sprite Based on Progress
var index = image_number-1;
if(index >= bunMax)
image_index = buns/bunMax*index;
else
image_index = buns/bunMax*index+(bunMax-index)/bunMax;