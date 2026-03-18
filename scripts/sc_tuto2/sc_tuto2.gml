/// @description Moves the make tutorials back to their proper place so that you can see them during the tutorial.
/// @return {void}
function sc_tuto2(){
	with(o_orderManager){
		while(makeTutos[0].x + xOffsetAmount <= xMin){
			with(o_makeTuto){
				x += o_orderManager.xOffsetAmount;
			};
		};
	};
}