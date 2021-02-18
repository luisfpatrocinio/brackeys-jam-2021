/// @description 

// Inherit the parent event
event_inherited();

//Atualizar variáveis de movimentação
get_input();

//Movimentar
function UpdateFacing() {
	my_dir = point_direction(0, 0, xaxis, yaxis);
	if (xaxis != 0){
		if (my_dir == clamp(my_dir, 90, 270)) facing = -1;
		else facing = 1;
	}
}
if (input_delay < 0){
	if (xaxis != 0 && yaxis == 0) {
		x = x_to;
		y = y_to;
		draw_xscale = 1.2; draw_yscale = 0.8;
		move(xaxis, yaxis);
		input_delay = INPUT_DELAY;
		UpdateFacing();
		//x_to += CW * xaxis;	
	}
	if (yaxis != 0 && xaxis == 0) {
		x = x_to;
		y = y_to;
		move(xaxis, yaxis);
		draw_xscale = 0.8; draw_yscale = 1.2;
		input_delay = INPUT_DELAY;
		UpdateFacing();
		//y_to += CH * yaxis;	
	}
	
}
z += zsp;

if (moving) {
	x = approach(x, x_to, 2);
	y = approach(y, y_to, 2);
	//if (x_to > x) facing = 1;
	//else if (x_to < x) facing = -1;
	if (x == x_to && y == y_to) {
		moving = false;
	} else {
		
	}
}


//Redefinir zfloor se não estiver sobre uma plataforma.
if (!instance_place(x, y, o_block_par)) {
	zfloor = 0;	
}

//Força da gravidade no ar
if (z > zfloor) {
	zsp -= zgrav;			//Aplica força no eixo Z;
}

//Parar de cair ao tocar no chão
if (z <= zfloor) {
	z = zfloor;
	zsp = 0;
}

//Pular
if (jumpKey) {
	if (on_ground) {
		zsp += jumpforce;	
	} else {
		if (my_bird != noone) {
			my_bird.state = BirdState.coming;
			
		}
	}
}

if (actKey) {
	if (!instance_exists(IntBox)) {
		var _x = x + lengthdir_x(CW, my_dir);
		var _y = y + lengthdir_y(CH, my_dir);
		instance_create_depth(_x, _y, depth, IntBox);
	}
}

//Cuidar de sprites
if (moving) {
	sprite_index = sprWalk;
	image_speed = 1;
} else {
	sprite_index = sprWalk;
	image_index = 0;
	image_speed = 0;	
}

if (hp <= 0) {
	sprite_index = sprDeath;
	image_speed = 0;
	image_index = approach(image_index, image_number-1, 0.2);
}

