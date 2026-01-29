/// @description Make New Order
var newOrder = instance_create_layer(x+gap*ds_list_size(orderList)+xOffset,y,"HUDSTUFF",o_orderTicket);
ds_list_add(orderList,newOrder);
alarm[0] = irandom_range(orderGapMin,orderGapMax);