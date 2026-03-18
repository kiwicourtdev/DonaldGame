/// @description Resets kitchen object variables.
/// @return {void}
function sc_resetKitchen(){
	//Clear Toasters
	with(o_toastedZone){
		ds_list_clear(bunList);
	};
	//Restock Everything
	with(o_bunRack){
		buns = bunMax;
	};
	//Reset Heat
	with(o_heatManager){
		totalHeat = 0;
	};
	//Reset Plates
	with(o_deluxeHandler){
		dOut = 0;
		request = 0;

		for(var i = 0; i < dMax; i++){
			with(plates[i]){
				buns = 0;
		
				sprite_index = s_deluxePlate;
				image_alpha = 0;
				image_index = 0;
			};
		};
	};
}