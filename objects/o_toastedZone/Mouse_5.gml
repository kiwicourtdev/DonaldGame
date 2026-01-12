/// @description Pickup Only

if(o_handManager.hands[1].hold == pickup.empty && hold != pickup.empty){
	var hand = o_handManager.hands[1];
	hand.hold = hold;
	hand.holdSprite = holdSprite;
	hand.dropAfterUse = singleUse;
	hold = pickup.empty;
	o_toaster.bunsIn--;
};