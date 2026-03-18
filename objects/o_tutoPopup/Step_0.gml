/// @description Do Not Continue Alarm if Not on Screen or Mid Transition or ESPECIALLY if Another Text Box is Displayed or if Days Do Not Match
if((givenDay != -1 && global.day != givenDay) || o_txtBox.txt != "" || (!globalCount && (o_transitionManager.alarm[0] != -1 || (x != clamp(x, 0, global.width) || y != clamp(y, 0, global.height)))))
alarm[0]++;