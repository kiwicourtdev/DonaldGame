/// @description General purpose function for swapping the item in a hand.
/// @param {int64}  right				The hand being used.
/// @param {int64}  newHold				The new object desired to be in the hand.
/// @param {boolean}  single			A boolean of whether the item should be single-use (drop after use).
/// @return {void}
function sc_pickup(right,newHold,single){
	var hand = o_handManager.hands[right];
	hand.hold = newHold;
	hand.holdSprite = newHold;
	hand.dropAfterUse = single;
}