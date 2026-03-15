/// @description Move Every Object

if(!global.done){
	with(o_worldObject){
		if(other.horizontal){
			x += other.move;
		}else{
			y += other.move;
		};
	};
};