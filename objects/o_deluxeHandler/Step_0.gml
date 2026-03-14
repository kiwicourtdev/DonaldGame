/// @description Create Patty When Requested
if(request > 0){
	for(var i = 0; i < dMax; i++){
		if(request > 0 && plates[i].buns == 0 && plates[i].alarm[0] == -1){
			request--;
			plates[i].alarm[0] = random_range(dTimeMin,dTimeMax);
		};
	};
};