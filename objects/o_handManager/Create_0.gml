/// @description Init

//Final
global.pickup = {
	empty: asset_get_index(s_empty),

	basicBun: asset_get_index(s_hBasicBun),
	deluxeBun: asset_get_index(s_hDeluxeBun),
	superBun: asset_get_index(s_hSuperBun),
	
	basicToast: asset_get_index(s_hBasicToast),
	deluxeToast: asset_get_index(s_hDeluxeToast),
	superToast: asset_get_index(s_hSuperToast),
	
	basicWrap: asset_get_index(s_hBasicWrap),
	chickenWrap: asset_get_index(s_hChickenWrap),
	
	deluxeBox: asset_get_index(s_hDeluxeBox),
	superBox: asset_get_index(s_hSuperBox),
	bigChickenBox: asset_get_index(s_hBigChickenBox),
	
	nugS: asset_get_index(s_hNugS),
	nugM: asset_get_index(s_hNugM),
	nugL: asset_get_index(s_hNugL),
	
	ketchup: asset_get_index(s_hKetchup),
	mustard: asset_get_index(s_hMustard),
	chickenSauce: asset_get_index(s_hChickenSauce),
	superSauce: asset_get_index(s_hSuperSauce),
	
	onion: asset_get_index(s_hOnion),
	pickle: asset_get_index(s_hPickle),
	lettuce: asset_get_index(s_hLettuce),
	
	bigOnion: asset_get_index(s_hBigOnion),
	coolPickle: asset_get_index(s_hCoolPickle),
	tomato: asset_get_index(s_hTomato),
	
	cheeseSlice: asset_get_index(s_hCheese),
	
	tongs: asset_get_index(s_hTongs),
	shovel: asset_get_index(s_hShovel),
	
	regMeat: asset_get_index(s_hRegMeat),
	chicken: asset_get_index(s_hChicken),
	coolChicken: asset_get_index(s_hCoolChicken),
	nuggets: asset_get_index(s_hNuggets),
	bigMeat: asset_get_index(s_hBigMeat),
	
	finished: asset_get_index(s_hDeluxeBoxF)
};

global.framesToHours = 216000;
global.framesToMinutes = 3600;
global.framesToSeconds = 60;

//Modify
hands = [noone,noone];
global.sourceID = [noone,noone];
global.finishedSandwiches = [noone,noone];

//Init
hands[0] = instance_create_depth(80,220,depth,o_hand);

hands[1] = instance_create_depth(400,220,depth,o_hand);
hands[1].rightHand = true;