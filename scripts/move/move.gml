function move(argument0, argument1) {
	var hsp = argument0;
	var vsp = argument1;
	
	var inst = noone;
	
	inst = instance_place(x + hsp, y, o_block_par);
	//Só é possível atravessar se não houver parede, ou se ela estiver embaixo do player.
	if (!inst || inst.z <= z) {
		x += hsp;	
	}
	
	inst = instance_place(x, y + vsp, o_block_par);
	//Só é possível atravessar se não houver parede, ou se ela estiver embaixo do player.
	if (!inst || inst.z <= z) {
		y += vsp;	
	}

	z += zsp;
}
