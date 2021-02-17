/// @description 
if (place_free(mouse_x, mouse_y)) {
	var _x = get_tile_x(mouse_x);
	var _y = get_tile_x(mouse_y);
	Level.grid[# _x, _y] = WALL;
	Level.Refresh();
}