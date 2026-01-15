/// @description Move Every Object

with(o_worldObject){
	if(other.horizontal){
		x += other.move;
	}else{
		y += other.move;
	};
};