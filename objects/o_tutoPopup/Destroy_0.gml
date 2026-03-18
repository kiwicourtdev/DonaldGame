/// @description Resume Gameplay and Reset Text at Conclusion
if inGame
global.done = false;
with(o_txtBox){
	txt = "";
	up = false;
};

script_execute(scrEnd);