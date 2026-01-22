/// @description Clear Items
sc_pickup(0,global.pickup.empty,true);

if(ds_exists(global.finishedSandwiches[0],ds_type_list)) ds_list_destroy(global.finishedSandwiches[0]);