/// @description Picks up a toasted bun from the area below the toaster, if one is there.
/// @param {int64}  right				The hand being used.
/// @return {void}
function sc_toastedZone(right){
	if(!global.done){
		if(o_handManager.hands[right].hold == global.pickup.empty && hold != global.pickup.empty){
			var hand = o_handManager.hands[right];
			hand.hold = hold;
			hand.holdSprite = holdSprite;
			hand.dropAfterUse = singleUse;
			hold = global.pickup.empty;
			o_toaster.bunsIn--;
		};
	};
}