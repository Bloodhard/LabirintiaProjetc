function MovimentarJogadorSalas(){
	if place_meeting(x, y, oPlayer_Godhard){
		room_goto(r_one); 
		oPlayer_Godhard.x = target_x;
		oPlayer_Godhard.y = target_y;
	}
}

MovimentarJogadorSalas();