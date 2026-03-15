/// @description Resets the player save file.
/// @return {void}
function sc_resetSave(){
	ini_open(global.fname);
		ini_write_real("Day","day",-1);
		for(var i = 0; i < o_progressHandler.totalDays; i++){
			ini_write_real("Grades","day"+string(i),0);
		};
	ini_close();
}