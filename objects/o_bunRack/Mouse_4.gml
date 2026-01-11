/// @description Pickup/Place

//Pickup
if(o_handManager.hands[0].hold = pickup.empty){
	if(buns > 0){
		buns--;
		sc_pickup(0,hold);
	};
}else if(o_handManager.hands[0].hold = hold){//Put Down
	if(buns < bunMax){
		buns++;
		sc_pickup(0,pickup.empty);
	};
};