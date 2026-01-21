/// @description Spawn Finisher
if(!ds_list_empty(containing) && !instance_exists(wrapper)){
	wrapper = instance_create_depth(x,y,depth,o_sandwichFinisher);
	wrapper.owner = id;
};

if(ds_list_empty(containing) && instance_exists(wrapper)) instance_destroy(wrapper);