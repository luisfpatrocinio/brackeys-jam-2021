/// @description 
show_debug_message("LEVEL EDITOR CRIADO");

function posicionar(obj) {
	instance_create_depth(get_tile_x(mouse_x) * CW + CW/2, get_tile_x(mouse_y) * CH + CH/2, depth, obj);
}