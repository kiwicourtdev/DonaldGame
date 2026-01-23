/// @description Make New Order
var newOrder = instance_create_layer(x+128*ds_list_size(orders)+xOffset,y,"HUDSTUFF",o_orderTicket);
ds_list_add(orders,newOrder);
alarm[0] = 300;