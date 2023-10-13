/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: sCorvo_Idle_Left,
		right: sCorvo_Idle_Right,
		up: sCorvo_Idle_Up,
		down: sCorvo_Idle_Down,
	},
	walk:{
		left: pSpriteMudinho_WalkLeft64x64,	
		right: pSpriteMudinho_WalkRight64x64,
		up: pSpriteMudinho_WalkUp64x64,
		down: pSpriteMudinho_WalkDown64x64
	}
}

state = states.idle;
