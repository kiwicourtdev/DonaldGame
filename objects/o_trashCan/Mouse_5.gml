/// @description Clear Items
sc_pickup(1,global.pickup.empty,true);

if(ds_exists(global.finishedSandwiches[1],ds_type_list)) ds_list_destroy(global.finishedSandwiches[1]);