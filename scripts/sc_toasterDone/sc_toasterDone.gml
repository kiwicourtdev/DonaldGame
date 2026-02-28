/// @description General function for any of the buns being done in the toaster.
/// @param {int64}  which				Which toaster is done.
/// @return {void}
function sc_toasterDone(which){
	var replace = global.pickup.empty;

	switch(buns[which]){
		case global.pickup.basicBun:
			replace = global.pickup.basicToast;
		break;
		case global.pickup.deluxeBun:
			replace = global.pickup.deluxeToast;
		break;
		case global.pickup.superBun:
			replace = global.pickup.superToast;
		break;
	};

	with(zones[which]){
		ds_list_add(bunList, replace);
	};
	buns[which] = global.pickup.empty;
	
	bunsIn--;
}