/// @description Pickup/Place

//Pickup
if(o_handManager.hands[1].hold = pickup.empty){
	if(buns > 0){
		buns--;
		sc_pickup(1,hold);
	};
}else if(o_handManager.hands[1].hold = hold){//Put Down
	if(buns < bunMax){
		buns++;
		sc_pickup(1,pickup.empty);
	};
};