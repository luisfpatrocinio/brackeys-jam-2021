function get_input() {
	//rKey = get_input_state(playerNo, input_action.right, state_type.held);
	//lKey = get_input_state(playerNo, input_action.left, state_type.held);
	//dKey = get_input_state(playerNo, input_action.down, state_type.held);
	//uKey = get_input_state(playerNo, input_action.up, state_type.held);

	rKey = keyboard_check(vk_right);
	lKey = keyboard_check(vk_left);
	dKey = keyboard_check(vk_down);
	uKey = keyboard_check(vk_up);

	jumpKey	= (keyboard_check_pressed(vk_end))
	actKey = (keyboard_check_pressed(vk_space));
	//specialKey	= get_input_state(playerNo, input_action.actionB, state_type.pressed);

	xaxis = (rKey - lKey);
	yaxis = (dKey - uKey);
}
