function MovimentarJogadorSalas(){
	if place_meeting(x, y, oPlayer_Godhard){
		room_goto(target_rm); 
		oPlayer_Godhard.x = target_x;
		oPlayer_Godhard.y = target_y;
	}
}

MovimentarJogadorSalas();