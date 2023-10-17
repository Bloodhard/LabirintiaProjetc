function MovimentarJogadorSalas(){
	if place_meeting(x, y, oPlayer){
		instance_deactivate_all(o_level);
		room_goto(r_lobby); 
	}
}

MovimentarJogadorSalas();