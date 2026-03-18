/// @description Creates a new object to continue the tutorial to showcase orders.
/// @return {void}
function sc_tuto1End(){
	var obj = instance_create_layer(global.width/2,global.height/2,"Popups",o_tutoPopup);
	
	with(obj){
		globalCount = true;

		spawnDelay = o_orderManager.firstOrderTime*1.1;
		txt = [
			"This is the text for the order tutorial."
		];
		hls = [
			[]
		];
		radii = [
			[]
		];

		up = [
			false
		];

		inGame = true;
		
		scr = sc_tuto2;

		//Init
		alarm[0] = spawnDelay;
	};
}