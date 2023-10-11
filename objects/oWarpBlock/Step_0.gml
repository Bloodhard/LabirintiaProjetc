function MovimentarJogadorSalas(){
	if place_meeting(x, y, oMainCharacter){
		room_goto(r_one); 
		oMainCharacter.x = target_x;
		oMainCharacter.y = target_y;
	}
}

MovimentarJogadorSalas();