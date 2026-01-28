// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_toastedZone(right){
	if(o_handManager.hands[right].hold == global.pickup.empty && hold != global.pickup.empty){
		var hand = o_handManager.hands[right];
		hand.hold = hold;
		hand.holdSprite = holdSprite;
		hand.dropAfterUse = singleUse;
		hold = global.pickup.empty;
		o_toaster.bunsIn--;
	};
}