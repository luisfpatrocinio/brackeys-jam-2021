/// @description 
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);
var _h = string_height(txt);
var _w = string_width(txt);

//var _back_col = highlight ? c_white : c_black;
//var _txt_col = highlight ? c_black : c_white;

var _back_col = highlight ? c_black : c_white;
var _txt_col = highlight ? c_white : c_black;

draw_rectangle_colour(x, y-_h/2, x+_w, y+_h/2, _back_col, _back_col, _back_col, _back_col, false);
draw_text_color(x, y, txt, _txt_col, _txt_col, _txt_col, _txt_col, 1);