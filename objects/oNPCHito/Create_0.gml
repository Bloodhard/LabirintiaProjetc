/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: sHito_Idle_Left,
		right: sHito_Idle_Right,
		up: sHito_Idle_Up,
		down: sHito_Idle_Down,
	},
	walk:{
		left: pSpriteHito_WalkLeft64x64,	
		right: pSpriteHito_WalkRight64x64,
		up: pSpriteHito_WalkUp64x64,
		down: pSpriteHito_WalkDown64x64
	}
}

state = states.idle;
