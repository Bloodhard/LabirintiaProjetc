/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: sKnnovar_idle_left,
		right: sKnnovar_idle_right,
		up: sKnnovar_idle_up,
		down: sKnnovar_idle_down,
	},
	walk:{
		left: pSpriteKnovar_WalkLeft32x32,	
		right: pSpriteKnovar_WalkRight32x32,
		up: pSpriteKnovar_WalkUp32x32,
		down: pSpriteKnovar_WalkDown32x32
	}
}

state = states.idle;
