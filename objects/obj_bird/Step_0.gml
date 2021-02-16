/// @description 
wings_yyy+=0.08;
yyy += 0.02;
xxx += 0.01;

depth = Player.depth - 100;

switch (state) {
	case BirdState.idle: 
		y = Player.y  + z + sin(yyy) * 4;
		draw_y = y + sin(wings_yyy) * 2;
		x = Player.x + sin(xxx) * 16;
		break;
	case BirdState.coming:
		x = smooth_approach(x, Player.x, 0.4);
		y = smooth_approach(y, Player.y-z, 0.4);
		//z = smooth_approach(z, Player.z, 0.4);
		if (x == Player.x && y == Player.y && z = Player.z) {
			state = BirdState.carrying;	
			fly_timer = room_speed*3;
		}
		break;
	case BirdState.carrying:
		x = Player.x;
		y = Player.y - 12;
		if (fly_timer >= 0) {
			fly_timer--;	
		} else {
			state = BirdState.idle;
		}
		break;
}
