function move(argument0, argument1) {
	var hsp = argument0;
	var vsp = argument1;
	
	var inst = noone;
	
	inst = instance_place(x + hsp*CW/2, y, o_block_par);
	x_to = x;
	y_to = y;
	//Só é possível atravessar se não houver parede, ou se ela estiver embaixo do player.
	if (!inst || inst.z <= z) {
		x_to = x + CW*hsp;	
		moving = true;
	}
	
	inst = instance_place(x, y + vsp*CH/2, o_block_par);
	//Só é possível atravessar se não houver parede, ou se ela estiver embaixo do player.
	if (!inst || inst.z <= z) {
		y_to = y + CH*vsp;	
		moving = true;
	}
}
