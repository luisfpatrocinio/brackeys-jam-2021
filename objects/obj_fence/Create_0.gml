/// @description 

// Inherit the parent event
event_inherited();

image_speed = 0;

function AutoTile() {
	var _right = place_meeting(x+CW, y, obj_fence);
	var _left = place_meeting(x-CW, y, obj_fence);
	
	if (_right && !_left)	image_index = 0;
	if (_right && _left)	image_index = 1;
	if (!_right && _left)	image_index = 2;
}

with (obj_fence) {
	AutoTile();
}