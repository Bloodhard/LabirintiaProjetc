function MovimentarJogadorSalas(){
	if place_meeting(x, y, oPlayer_Godhard_32x32){
		room_goto(target_rm); 
		oPlayer_Godhard_32x32.x = target_x;
		oPlayer_Godhard_32x32.y = target_y;
	}
}

MovimentarJogadorSalas();