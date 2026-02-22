/// @description Fadeout and Manage o_resultsText
fadeWait = false;

if(!instance_exists(o_resultsText) && x >= 0)
instance_create_layer(0,0,"HUDSTUFF",o_resultsText);
