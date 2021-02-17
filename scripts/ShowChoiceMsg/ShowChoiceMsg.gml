// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowChoiceMsg(){
	with (obj_msg) {
		sumindo = true;	
	}
	var msgbox = instance_create_depth(0,0,0, obj_msg);
	msgbox.txt = argument0;
	msgbox.choices_txt = argument1;
	msgbox.choices_destinos = argument2;
	msgbox.choiced = true;
}