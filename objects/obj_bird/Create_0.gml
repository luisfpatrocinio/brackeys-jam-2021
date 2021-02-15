/// @description 
wings_yyy = 0;
draw_y = y;
yyy = 0;
xxx = 0;
draw_x = x;
z = 48;

player = instance_find(Player, 0);
image_speed = 0.10;

enum BirdState {
	idle,
	coming,
	carrying
}

fly_timer = -1;

state = BirdState.idle;