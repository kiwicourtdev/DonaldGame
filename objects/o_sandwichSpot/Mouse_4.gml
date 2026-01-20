/// @description Take in Objects

var hand = o_handManager.hands[0];

//Check for If an Item is Held
if(hand.hold != global.pickup.empty && hand.hold != global.pickup.tongs && hand.hold != global.pickup.shovel){
	/*Check for Valid Items
	* - Putting down a wrap or box if nothing is there.
	* - Putting a toasted bun on a wrapper or non-nugget box.
	* - Putting nuggets in a nugget box.
	* - Putting anything else on top of a toasted bun.
	*/
	if((ds_list_empty(containing) && (hand.hold == global.pickup.basicWrap || hand.hold == global.pickup.chickenWrap || hand.hold == global.pickup.deluxeBox || hand.hold == global.pickup.bigChickenBox || hand.hold == global.pickup.superBox || hand.hold == global.pickup.nugS || hand.hold == global.pickup.nugM || hand.hold == global.pickup.nugL)) || (ds_list_size(containing) == 1 && (ds_list_find_value(containing,0) == global.pickup.basicWrap || ds_list_find_value(containing,0) == global.pickup.chickenWrap || ds_list_find_value(containing,0) == global.pickup.deluxeBox || ds_list_find_value(containing,0) == global.pickup.bigChickenBox || ds_list_find_value(containing,0) == global.pickup.superBox) && (hand.hold == global.pickup.basicToast || hand.hold == global.pickup.deluxeToast || hand.hold == global.pickup.superToast)) || ((ds_list_find_value(containing,0) == global.pickup.nugS || ds_list_find_value(containing,0) == global.pickup.nugM || ds_list_find_value(containing,0) == global.pickup.nugL) && hand.hold == global.pickup.nuggets) || (ds_list_size(containing) > 1 && (ds_list_find_value(containing,0) == global.pickup.basicWrap || ds_list_find_value(containing,0) == global.pickup.chickenWrap || ds_list_find_value(containing,0) == global.pickup.deluxeBox || ds_list_find_value(containing,0) == global.pickup.bigChickenBox || ds_list_find_value(containing,0) == global.pickup.superBox) && !(hand.hold == global.pickup.basicWrap || hand.hold == global.pickup.chickenWrap || hand.hold == global.pickup.deluxeBox || hand.hold == global.pickup.bigChickenBox || hand.hold == global.pickup.superBox || hand.hold == global.pickup.nugS || hand.hold == global.pickup.nugM || hand.hold == global.pickup.nugL || hand.hold == global.pickup.basicToast || hand.hold == global.pickup.deluxeToast || hand.hold == global.pickup.superToast || hand.hold == global.pickup.nuggets || hand.hold == global.pickup.basicBun || hand.hold == global.pickup.deluxeBun || hand.hold == global.pickup.superBun))){
		if(hand.dropAfterUse || global.sourceID[0].buns > 0){
			ds_list_add(containing,hand.hold);
			if(!hand.dropAfterUse)
			global.sourceID[0].buns--;
		};
		if(hand.dropAfterUse || global.sourceID[0].buns == 0)
		sc_pickup(0,global.pickup.empty,false);
	};
};