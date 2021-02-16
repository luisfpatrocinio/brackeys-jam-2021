/// @description 
get_input();

if (input_delay < 0) {
	//Se não tiver opção já confirmada.
	if (confirmed < 0) {
		if (yaxis < 0) {
			selected--;	
			input_delay = INPUT_DELAY;
		}
		if (yaxis > 0) {
			selected++
			input_delay = INPUT_DELAY;
		}
		selected = wrap(selected, 0, instance_number(objTitleOption));
	}
	
	if (jumpKey) {
		confirmed = selected;	
		confirmed_timer = 1;
	}
	
} else {
	input_delay--;
}

if (confirmed_timer >= 0){
	confirmed_timer--;	
} else{
	if (confirmed >= 0){
		//Executar ação.
		event_user(0);
	}
}

with (objTitleOption) {
	if (other.selected == no) {
		highlight = true;
	} else {
		highlight = false;	
	}
}