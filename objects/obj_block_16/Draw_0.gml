/// @description 
var _spr = (checkboard == 0) ? spr_tileset_1 : spr_tileset_2;

draw_sprite(_spr, sprUp, x, y-CH);
draw_sprite(_spr, sprDown, x, y);

