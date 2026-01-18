/// @description Pickup Only

if(o_handManager.hands[1].hold == global.pickup.empty && hold != global.pickup.empty){
	var hand = o_handManager.hands[1];
	hand.hold = hold;
	hand.holdSprite = holdSprite;
	hand.dropAfterUse = singleUse;
	hold = global.pickup.empty;
	o_toaster.bunsIn--;
};