/// @description 

// Inherit the parent event
event_inherited()

//Atualizar variáveis de movimentação
get_input()

// Calculate Moviment
var _move = rkey - lkey

hsp = _move * spd

vsp = vsp + zgrav


//Movimentar
if (input_delay < 0){
	if (xaxis != 0) {
		x = x_to;
		y = y_to;
		draw_xscale = 1.2; draw_yscale = 0.8;
		move(xaxis, yaxis);
		input_delay = INPUT_DELAY;
		//x_to += CW * xaxis;	
	}
	if (yaxis != 0) {
		x = x_to;
		y = y_to;
		move(xaxis, yaxis);
		draw_xscale = 0.8; draw_yscale = 1.2;
		input_delay = INPUT_DELAY;
		//y_to += CH * yaxis;	
	}
}
z += zsp;

if (moving) {
	x = smooth_approach(x, x_to, 0.4);
	y = smooth_approach(y, y_to, 0.4);
	if (x == x_to && y == y_to) {
		moving = false;
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

//atk
if (keyboard_check(vk_space)) {
	
}


//Direcao

if (keyboard_check(vk_right))
{
	image_angle = 0
}


if (keyboard_check(vk_left))
{
	image_angle = 0
}


if (keyboard_check(vk_up))
{
	image_angle = 90
	motion_add(image_angle, 0.05)
}

if (keyboard_check(vk_down))
{
	image_angle = 270
	motion_add(image_angle, 0.05)
}

if (keyboard_check(vk_space))
{
	var inst = instance_create_layer(x,y,"Instances", obj_atk_player)
    inst.direction = image_angle
}

// animation
//if(!place_meeting(x,y+1,oBlock))
//{
 
 //  sprite_index = sPlayerU
//   image_speed = 0
//   if ( vsp > 0 ) image_index = 1; else image_index = 0
	
//}	
//else
//{
	//image_speed=1
//	if ( hsp != 0 )
//	{

 //       sprite_index = sPlayerR

//	}	
//	else
//	{

 //       sprite_index = sPlayer
//	}	
	

//}	

if ( hsp != 0)	
{
image_xscale = sign(hsp);
//image_yscale = sign(hsp);
}