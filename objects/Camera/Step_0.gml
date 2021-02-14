/// @description 
//if !instance_exists(target) exit;
shake = approach(shake, 0, 0.20);

//Control.i_x = shake*choose(1, -1);
//Control.i_y = shake*choose(1, -1);

if instance_exists(target){
	x = target.x + shake*choose(1, -1);
	y = target.y + shake*choose(1, -1);
}else{
	x = room_width/2 + shake*choose(1, -1);
	y = room_height/2 + shake*choose(1, -1);
}

//x = clamp(x, global.cam_width/2, room_width-global.cam_width/2);
//y = clamp(y, global.cam_height/2, room_height-global.cam_height/2);

if keyboard_check_pressed(vk_pageup) zoom_level-=0.1;
if keyboard_check_pressed(vk_pagedown) zoom_level+=0.1;

zoom = smooth_approach(zoom, zoom_level, 0.2);

camera_set_view_size(view_camera[0], 480*zoom, 270*zoom);
global.cam_width = camera_get_view_width(view_camera[0]);
global.cam_height = camera_get_view_height(view_camera[0]);

global.view_x = x - global.cam_width/2;
global.view_y = y - global.cam_height/2;

camera_set_view_pos(view_camera[0], global.view_x, global.view_y);
