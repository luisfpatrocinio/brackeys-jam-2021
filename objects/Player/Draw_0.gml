//Desenhar sombra
//TODO: Valor vai variar conforme altura no eixo Z
var _sh_scale = 1;
draw_sprite_ext(spr_player_shadow, image_index, x, y - zfloor, _sh_scale, _sh_scale, image_angle, c_white, image_alpha);

//Desenhar player
draw_xscale = lerp(draw_xscale, 1, 0.2);
draw_yscale = lerp(draw_yscale, 1, 0.2);
draw_sprite_ext(sprite_index, image_index, x, y - z, draw_xscale * facing, draw_yscale, image_angle, image_blend, image_alpha);


if keyboard_check(vk_control) {
	draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, true);	
}