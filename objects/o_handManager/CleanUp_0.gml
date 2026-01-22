/// @description Delete Struct
delete global.pickup;

if(ds_exists(global.finishedSandwiches[0],ds_type_list)) ds_list_destroy(global.finishedSandwiches[0]);
if(ds_exists(global.finishedSandwiches[1],ds_type_list)) ds_list_destroy(global.finishedSandwiches[1]);