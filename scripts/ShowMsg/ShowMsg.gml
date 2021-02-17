function ShowMsg(){
	with (obj_msg) {
		sumindo = true;	
	}
	var msgbox = instance_create_depth(0,0,0, obj_msg);
	msgbox.txt = argument0;
}