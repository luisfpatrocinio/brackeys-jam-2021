/// @description 
z = 16;
sprUp = 0;
sprDown = 0;



function AutoTile() {
	var _up		= (place_meeting(x,		y-CH/2, o_block_par));
	var _left	= (place_meeting(x-CW/2,	y, o_block_par));
	var _right	= (place_meeting(x+CW/2,	y, o_block_par));
	var _down	= (place_meeting(x,		y+CH/2, o_block_par));

	//Não tem em baixo:
	if (!_down){
		if (_left && _right) {
			sprUp = 2; sprDown = 11;
		}

		if (!_left && _right) {
			sprUp = 1; sprDown = 10;
		}

		if (_left && !_right) {
			sprUp = 3; sprDown = 12;
		}
	}
	
	if (_down && !_up) {
		if (_left && _right) {
			sprUp = 7; 
		}

		if (!_left && _right) {
			sprUp = 6; 
		}

		if (_left && !_right) {
			sprUp = 8; 
		}
	}
	
	if (_down && _up) {
		if (_left && _right) {
			sprUp = 0; 
		}

		if (!_left && _right) {
			sprUp = 4; 
		}

		if (_left && !_right) {
			sprUp = 5; 
		}
	}
}

checkboard = 0;

//AutoTile();
alarm[0] = 1;