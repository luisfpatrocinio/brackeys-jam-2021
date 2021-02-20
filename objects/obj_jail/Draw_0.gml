/// @description 
var _spr_animal = noone;
switch (animal_inside) {
	case Animal.bird:
		_spr_animal = spr_arara;	
		break;
}

if (_spr_animal != noone) {
	draw_sprite_ext(_spr_animal, 0, x, y-z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);	
}
draw_sprite_ext(sprite_index, image_index, x, y - z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);	