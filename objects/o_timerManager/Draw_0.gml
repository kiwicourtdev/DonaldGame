/// @description Debug

draw_text(x,y,string(minTenPlace)+string(minOnePlace)+":"+string(tenPlace)+string(onePlace));

draw_text(x,y+16,string(alarm[0]/framesToSeconds));

draw_text(x,y+32,string(o_orderManager.orderGapMin));

draw_text(x,y+48,string(o_orderManager.orderQuota));
draw_text(x,y+64,string(o_orderManager.ordersDone));