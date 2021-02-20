function move(argument0, argument1) {
	var hsp = argument0;
	var vsp = argument1;
	
	var inst = noone;
	
	inst = instance_place(x + hsp*CW/2, y + vsp * CH/2, Solid);
	
	var _obj_solido = false;
	if (inst != noone) {
		if (object_is_ancestor(inst.object_index, o_gravity_par)) {
			if (inst.block){
				_obj_solido = true;
			}
		}
	}
	
	x_to = x;
	y_to = y;
	//Só é possível atravessar se não houver parede, ou se ela estiver embaixo do player.
	if (!inst || inst.z <= z) && (!_obj_solido) {
		x_to = x + CW*hsp;	
		moving = true;
	}
	
	inst = instance_place(x, y + vsp*CH/2, Solid);
	//Só é possível atravessar se não houver parede, ou se ela estiver embaixo do player.
	if (!inst || inst.z <= z) && (!_obj_solido){
		y_to = y + CH*vsp;	
		moving = true;
	}
	
	
}
