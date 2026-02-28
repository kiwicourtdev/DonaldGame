/// @description Picks up a toasted bun from the area below the toaster, if one is there.
/// @param {int64}  right				The hand being used.
/// @return {void}
function sc_toastedZone(right){
	if(!global.done && o_handManager.hands[right].hold == global.pickup.empty && !ds_list_empty(bunList)){
		var hand = o_handManager.hands[right];
		hand.hold = ds_list_find_value(bunList, 0);
		hand.holdSprite = hand.hold;
		hand.dropAfterUse = singleUse;
		ds_list_delete(bunList, 0);
	};
}