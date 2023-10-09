if (inputX != 0 || inputY != 0){
	if (!moving){
		//Prefer X over Y
	if (inputX != 0) inputY = 0;	
	
	
	// New Position
	var _newTileX = to_tile(x) + inputX;
	var _newTileY = to_tile(y) + inputY;
	
	//Collision
	var _col = collision(_newTileX, _newTileY);
	
	if(!_col){
		
	targetX = to_room(_newTileX + 0.5);
	targetY = to_room(_newTileY + 0.5);
	
	moving = true;
		}
		else
		{
			moveDirection = point_direction(0, 0, inputX, inputY);
		}
	}
}

//Move
if (moving){
	set_state(states.walk);
	var _distance = point_distance(x,y,targetX, targetY);
	
	
	if(_distance > moveSpeed){
		x += sign(targetX - x) * moveSpeed;
		y += sign(targetY - y) * moveSpeed;
		
		moveDirection = point_direction(x,y, targetX, targetY);
	}
	else {
		x = targetX;
		y = targetY;
		
		moving = false;
	}
}
else {
	set_state(states.idle);
}

sprite_index = get_sprite(moveDirection);