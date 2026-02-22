/// @description Fadeout and Manage o_resultsText
fadeWait = false;

//Restore atWork if Teleporting Back
if(x >= global.width) global.atWork = true;

if(!instance_exists(o_resultsText) && x >= 0 && x < global.width && global.atWork){
	instance_create_layer(0,0,"HUDSTUFF",o_resultsText);
	global.atWork = false;
};