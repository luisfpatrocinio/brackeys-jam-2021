/// @description Executar ação selecionada.
switch (confirmed) {
	case 0:
		room_goto(rmGame);
	break;
	
	case 2:
		game_end();
	break;
}
