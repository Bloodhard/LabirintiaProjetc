/// @description Update camera

//Update destination
function AtualizarDestino(){
	if (instance_exists(follow))
	{
		xTo = follow.x;
		yTo = follow.y;
	}
}

//Update object position
function AtualizarPosicaoObjeto(){
	x += (xTo - x) / 15;
	y += (yTo - y) / 15;
}

//Keep camera center inside room
function CentralizarCameraSala(){
	x = clamp(x,viewWHalf,room_width-viewWHalf);
	y = clamp(y,viewHHalf,room_height-viewHHalf);
}

//Update camera view
function AtualizacaoVizualisacao(){
	camera_set_view_pos(cam,x-viewWHalf,y-viewHHalf);
}

AtualizarDestino();
AtualizarPosicaoObjeto();
CentralizarCameraSala();
AtualizacaoVizualisacao();