//Input

inputX = 0;
inputY = 0;

// Movement

moveSpeed = 1;

moving = false;


targetX = x;
targetY = y;

get_sprite = function (dir){
	if (dir == 0) return state.left;
	else if (dir == 90) return state.up;
	else if (dir == 180) return state.right;
	else if (dir == 270) return state.down;
	
	return sprite_index;
}

set_state = function(newState) {
	if (state == newState) return;
	
	state = newState;
	image_index = 0;
}