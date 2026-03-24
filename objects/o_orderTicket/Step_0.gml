/// @description Check for Completion
if(active){
	var done = true;
	for(var i = 0; i < orderLength; i++){
		if(!completed[i]) done = false;
	};
	if(done){
		active = false;
		alarm[0] = destroyTimer;
	};
};