function MovimentarJogadorSalas(){
	if place_meeting(x, y, oPlayer){
		instance_deactivate_all(true);
		room_goto_next();
	}
}

MovimentarJogadorSalas();