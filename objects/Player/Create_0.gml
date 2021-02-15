/// @description Declarar variáveis

spd	= 1;		//Velocidade de movimento
hsp = 0;		//Velocidade Horizontal
vsp = 0;	    //Velocidade Vertical
zsp = 0;		//Velocidade no eixo Z
len = 0;		//Comprimento do vetor de movimento
dir = 0;		//Direção da Movimentação

acc = 0.1;		//Aceleração
fric = 0.1;		//Fricção - atrito

z = 0;			//Posição no eixo Z
zfloor = 0;		//Altura Z do piso embaixo do Player
jumpforce = 3;	//Força do Pulo
zgrav = 0.20;	//Gravidade no eixo Z

draw_xscale = 1;
draw_yscale = 1;

grav_inc = 0.05;

my_bird = instance_find(obj_bird, 0);