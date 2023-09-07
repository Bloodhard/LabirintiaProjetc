	
//party
global.party = 
[
	{
		name: "Godhard",
		hp: 50,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteGodhard_WalkRight64x64 , attack: pSpriteGodhard_WalkRight64x64, defend: pSpriteGodhard_WalkRight64x64, down: pSpriteGodhard_WalkRight64x64},
		actions:[]
	},
	{
		name: "Knovar",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteKnovar_WalkRight64x64 , attack: pSpriteKnovar_WalkRight64x64, defend: pSpriteKnovar_WalkRight64x64, down: pSpriteKnovar_WalkRight64x64},
		actions:[]
	},
	{
		name: "Zhara",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteZhara_WalkRight64x64 , attack: pSpriteZhara_WalkRight64x64, defend: pSpriteZhara_WalkRight64x64, down: pSpriteZhara_WalkRight64x64},
		actions:[]
	},
	{
		name: "Hito",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteHito_WalkRight64x64 , attack: pSpriteGodhard_WalkRight64x64, defend: pSpriteGodhard_WalkRight64x64, down: pSpriteGodhard_WalkRight64x64},
		actions:[]
	},
	{
		name: "Corvo",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteMudinho_WalkRight64x64 , attack: pSpriteGodhard_WalkRight64x64, defend: pSpriteGodhard_WalkRight64x64, down: pSpriteGodhard_WalkRight64x64},
		actions:[]
	},
]

//enemy data
global.enemies = {
	slimeG: 
	{
		name: "Slime",
		hp: 30,
		hpMax: 30,
		mp: 0,
		mpMax: 0,
		strength: 5,
		sprites: { idle: sSlime, attack: sSlimeAttack},
		actions: [],
		xpValue : 15,
		AIscript : function()
		{
			//enemy turn ai goes here
		}
	}
}
		