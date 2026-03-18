/// @description Progress Counter or Destroy Object

if(active){
	if(counter+1 == array_length(txt))
	instance_destroy();
	else{
		counter++;
		o_txtBox.up = up[counter];
	};
};