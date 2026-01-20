//To Be Used With o_bunRack
function sc_pickup(right,newHold,single){
	var hand = o_handManager.hands[right];
	hand.hold = newHold;
	hand.holdSprite = newHold;
	hand.dropAfterUse = single;
}