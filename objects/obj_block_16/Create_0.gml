/// @description 
z = 16;
sprUp = 0;
sprDown = 0;



function AutoTile() {
	show_debug_message("Autotile Iniciado");
	var _up		= (place_meeting(x,		y-CH/2, o_block_par));
	var _left	= (place_meeting(x-CW/2,	y, o_block_par));
	var _right	= (place_meeting(x+CW/2,	y, o_block_par));
	var _down	= (place_meeting(x,		y+CH/2, o_block_par));

	//Não tem em baixo:
	if (!_down){
		show_debug_message("Nao tem baixo");
		if (_left && _right) {
			sprUp = 2; sprDown = 11;
		}

		if (!_left && _right) {
			sprUp = 1; sprDown = 9;
		}

		if (_left && !_right) {
			sprUp = 3; sprDown = 10;
		}
	}
	
	if (_down) {
		if (_left && _right) {
			sprUp = 5; 
		}

		if (!_left && _right) {
			sprUp = 4; 
		}

		if (_left && !_right) {
			sprUp = 6; 
		}
	}
}

checkboard = 0;

//AutoTile();
alarm[0] = 1;