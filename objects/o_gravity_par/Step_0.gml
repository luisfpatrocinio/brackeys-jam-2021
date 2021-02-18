/// @description 
event_inherited();

//Força da gravidade no ar
if (z > zfloor) {
	zsp -= zgrav;			//Aplica força no eixo Z;
}

//Parar de cair ao tocar no chão
if (z <= zfloor) {
	z = zfloor;
	zsp = 0;
}