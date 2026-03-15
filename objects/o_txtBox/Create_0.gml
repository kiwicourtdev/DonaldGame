/// @description Init

//Final
halign = fa_left;
valign = fa_top;
maxRows = 3;

txtX = 16;
txtY = 200;

border = 4;
bottomBorder = txtX/2;

width = global.width-2*txtX-2*border;
sep = (global.height-txtY-bottomBorder)/maxRows;

boxSpr = s_txtBox;
boxType = 0;


//Modify
txt = "";

font = f_vcr10;
c = c_black;