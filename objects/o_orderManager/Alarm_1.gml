/// @description Extra Rush Orders
var newOrder = instance_create_layer(x+gap*ds_list_size(orderList)+xOffset,y,"HUDSTUFF",o_orderTicket);
ds_list_add(orderList,newOrder);

rushBonusCount++;

if(rushBonusCount < rushBonusMax) alarm[1] = rushBonusGap;