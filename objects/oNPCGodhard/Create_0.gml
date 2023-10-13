/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



// Inherit the parent event
event_inherited();


states = {
	idle: {
		left: sGodHard_Idle_Left,
		right: sGodHard_Idle_Right,
		up: sGodHard_Idle_Up,
		down: sGodHard_Idle_Down,
	},
	walk:{
		left: pSpriteGodhard_WalkLeft32x32,	
		right: pSpriteGodhard_WalkRight32x32,
		up: pSpriteGodhard_WalkUp32x32,
		down: pSpriteGodhard_WalkDown32x32
	}
}

state = states.idle;
