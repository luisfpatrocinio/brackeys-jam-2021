/// @description 
title_options_txt = ["START GAME", "LEVEL EDITOR", "EXIT GAME"];

for (var i = 0; i < array_length(title_options_txt); i++) {
	var _op = instance_create_depth(32, room_height-128 + 32 * i, depth, objTitleOption);
	_op.txt = title_options_txt[i];
	_op.no = i;
}

selected = 0;
#macro INPUT_DELAY 12
input_delay = -1;

confirmed = -1; 
confirmed_timer = -1;