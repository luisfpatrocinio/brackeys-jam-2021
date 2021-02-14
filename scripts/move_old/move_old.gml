function move_old(argument0, argument1) {
	var hsp = argument0;
	var vsp = argument1;

	//Colisões
	if place_meeting(x+hsp, y, Solid){
		while !place_meeting(x+sign(hsp), y, Solid) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	x+= hsp;

	if place_meeting(x, y+vsp, Solid){
		while !place_meeting(x, y+sign(vsp), Solid) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y+= vsp;


}
