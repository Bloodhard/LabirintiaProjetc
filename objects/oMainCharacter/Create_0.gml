/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: sZhara_Idle_Left,
		right: sZhara_Idle_Right,
		up: sZhara_Idle_Up,
		down: sZhara_Idle_Down,
	},
	walk:{
		left: pSpriteZhara_WalkLeft32x32,	
		right: pSpriteZhara_WalkRight32x32,
		up: pSpriteZhara_WalkUp32x32,
		down: pSprite_Zhara_WalkDown32x32
	}
}

state = states.idle;
