/// @description Executar ação selecionada.
switch (confirmed) {
	case 0:
		room_goto(rmGame);
	break;
	
	case 1:
		global.level_editor = true;
		room_goto(rmGame);
	break;
	
	case 2:
		game_end();
	break;
}
