/// @description 

// Inherit the parent event
event_inherited();

//Atualizar variáveis de movimentação
get_input();

//Movimentar
//Pegar distância (comprimento do vetor)
if (xaxis == 0) && (yaxis == 0){
	len = approach(len, 0, fric);	
}else{
	len = approach(len, spd, acc);
	//Direção
	dir = point_direction(0, 0, xaxis, yaxis);
}

//Atualizar variáveis das velocidades
hsp = lengthdir_x(len, dir);
vsp = lengthdir_y(len, dir);

move(hsp, vsp);

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
if (jumpKey && on_ground) {
	zsp += jumpforce;	
}