	//Checar se teclas estão sendo clicadas ( false = 0, true = 1 ).
	function CheckarTeclas (){
		right_key = keyboard_check(vk_right);
		left_key = keyboard_check(vk_left);
		up_key = keyboard_check(vk_up);
		down_key = keyboard_check(vk_down);
	}
	
	//Calculo para movimentação nos eixos X e Y
	function CalculoMov (){
		xspd = (right_key - left_key) * move_spd;
		yspd = (down_key - up_key) * move_spd;
	}
	

	// New Position
	var _newTileX = to_tile(x)


	//Colisão	
	var _col = collision(__newTileX, _newTileY);
	
	
	
	//move the player
	function Movimentar (){
		x+= xspd;
		y+= yspd;
	}
	
	//setar Sprite
	function SetarSpriteM (){
		mask_index = sprite[DOWN];
		if yspd == 0{
			if xspd > 0 {face = RIGHT};
			if xspd < 0 {face = LEFT};
		}
		if xspd > 0 && face == LEFT {face = RIGHT};
		if xspd < 0 && face == RIGHT {face =LEFT};

		if xspd == 0{
			if yspd > 0 {face = DOWN};
			if yspd < 0 {face = UP};
		}
		if yspd > 0 && face == UP {face = DOWN};
		if yspd < 0 && face == DOWN {face = UP};

		sprite_index = sprite[face];

		//animado
		if xspd ==0 && yspd ==0{
			image_index = 0;
		}
	}
	
	CheckarTeclas();
	CalculoMov();
	Colissao();
	Movimentar();
	SetarSpriteM();
	
