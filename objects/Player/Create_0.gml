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

facing = 1;

grav_inc = 0.05;

input_delay = -1;
moving = false;

x_to = x;
y_to = y;

my_bird = instance_find(obj_bird, 0);

enum Gender {
	boy,
	girl
}

gender = choose(Gender.boy, Gender.girl);

function assign_sprites() {
	switch (gender) {
		case Gender.boy:
			sprWalk = spr_boy_walk;
			sprDamage = spr_boy_damage;
			sprDeath = spr_boy_dying;
			break;
		
		case Gender.girl:
			sprWalk = spr_girl_walk;
			sprDamage = spr_girl_damage;
			sprDeath = spr_girl_dying;
			break;
	}
}

assign_sprites();

hp = 3;

mask_index = spr_player_mask;