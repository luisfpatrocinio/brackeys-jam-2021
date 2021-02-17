/// @description 
#macro CW	16
#macro CH	16
#macro FLOOR	-7
#macro WALL		-6

selected_action = "" //select action
lock_card = 0

instance_create_depth(0,0,0,Camera);
instance_create_depth(CW * 8 + CW/2, CH * 8 + CH/2,depth,Player);

width = room_width/CW;
height = room_height/CH;
grid = ds_grid_create(width, height);

//lay_id = layer_get_id("Tiles");
//map_id = layer_tilemap_get_id(lay_id);

ds_grid_clear(grid, FLOOR);

ds_grid_set_region(grid, 3, 4, 6, 5, WALL);

for (var _y = 0; _y < height -1; _y++) {
	 for (var _x = 0; _x < width -1; _x++) {
		
		//Colocar paredes
		if (grid[# _x, _y] == WALL) {
			var bl = instance_create_depth(_x * CW, _y * CH, 0, obj_block_16);
			
			if (_x mod 2 == 0) {
				if (_y mod 2 == 0) {
					bl.checkboard = 0;	
				} else {
					bl.checkboard = 1;	
				}
			} else {
				if (_y mod 2 == 0) {
					bl.checkboard = 1;	
				} else {
					bl.checkboard = 0;	
				}
			}
		}
		
		//DEFINIR PATH - PAREDE PARA OS INIMIGOS
		if (grid[# _x, _y] == FLOOR) {
			
		} else {
			//mp_grid_add_cell(grid_path, _x, _y);
		}
	}
}