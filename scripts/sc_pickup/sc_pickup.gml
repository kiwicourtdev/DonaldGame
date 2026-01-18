//To Be Used With o_bunRack
function sc_pickup(right,newHold){
	var hand = o_handManager.hands[right];
	hand.hold = newHold;
	hand.holdSprite = hold;
	hand.dropAfterUse = singleUse;
}