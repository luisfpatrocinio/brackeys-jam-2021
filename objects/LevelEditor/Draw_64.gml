/// @description 
var g_width = 480;
var g_height = 270;
display_set_gui_size(g_width, g_height);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_rectangle_colour(4, 4, g_width-4, g_height-4, c_black, c_black, c_black, c_black, true);
draw_text_outlined(g_width/2, 16, "Level Editor", c_white, c_black);