/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: sGuia_Idle_Left,
		right: sGuia_Idle_Right,
		up: sGuia_Idle_Up,
		down: sGuia_Idle_Down,
	},
	walk:{
		left: sSprite_Guia_Left,	
		right: sSprite_Guia_Right,
		up: sSprite_Guia_Up,
		down: sSprite_Guia_Up
	}
}

state = states.idle;
