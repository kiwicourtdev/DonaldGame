/// @description Creates a new object to continue the tutorial to showcase orders.
/// @return {void}
function sc_tuto1End(){
	var obj = instance_create_layer(global.width/2,global.height/2,"Popups",o_tutoPopup);
	
	with(obj){
		globalCount = true;

		spawnDelay = o_orderManager.firstOrderTime*1.1;
		txt = [
			"Here is your first order. These can consist of one to three products.",
			"Sending off a correctly-made product will mark that product as completed on the order.",
			"Once everything in an order is finished, the order will be done and will shortly disappear.",
			"Later in the shift, a fast rush of orders will be taken.",
			"Please press alt to toggle the recipe list.",
			"In normal gameplay, you will be able to scroll through this menu to find the recipes for every product.",
			"If orders start going off screen, it is possible to scroll through them, too.",
			"Also, pressing space will toggle the visibility of your order list.",
			"Whatever you do, don't fall too far behind on orders. You may find it overwhelming.",
			"Leaving too many unfinished orders for too long will cause you to overheat, warping your vision.",
			"Have fun!"
		];
		hls = [
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]],
			[[-16, -16]]
		];
		radii = [
			[1],
			[1],
			[1],
			[1],
			[1],
			[1],
			[1],
			[1],
			[1],
			[1],
			[1]
		];

		up = [
			false,
			false,
			false,
			false,
			false,
			false,
			false,
			false,
			false,
			false,
			false
		];

		inGame = true;
		
		scr = sc_tuto2;

		//Init
		alarm[0] = spawnDelay;
	};
}