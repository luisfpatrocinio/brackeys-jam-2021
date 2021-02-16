/// @description 


var _sh_y = z;
var _block = instance_position(x, y-z, o_block_par);
if (_block != noone) {
	_sh_y -= _block.z;
}
//draw_sprite(spr_player_shadow, image_index, x, y + _sh_y);

//draw_sprite(sprite_index, image_index, x, draw_y);