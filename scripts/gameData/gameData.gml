global.actionLibrary =
{
	attack:
	{
		name: "Attack",
		description: "{0} Attacks!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation : "attack",
		effectSprite: noone,
		effectOnTarget : MODE.NEVER,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			BattleChangeHP(_targets[0], -_damage, 0);
		}
	},
	ice :
	{
		name: "Ice",
		description : "{0} casts Ice!",
		subMenu: "Magic",
		mpCost: 4,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.VARIES,
		userAnimation: "cast",
		effectSprite: noone,
		effectOnTarget : MODE.NEVER,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.inteligence + random_range(-_user.inteligence * 0.25, _user.inteligence * 0.25));
			BattleChangeHP(_targets[0], -_damage);
			//BattleChangeMP(_user, -mpCost)
		}
	}
}

enum MODE
{
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2
}
		
//party
global.party = 
[
	{
		name: "Godhard",
		classe: "White Mage",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteGodhard_WalkRight64x64 , attack: pSpriteGodhard_WalkDown64x64, defend: pSpriteGodhard_WalkRight64x64, down: pSpriteGodhard_WalkRight64x64},
		actions:[global.actionLibrary.attack, global.actionLibrary.ice]
	},
	{
		name: "Knovar",
		classe: "Rogue",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteKnovar_WalkRight64x64 , attack: pSpriteKnovar_WalkDown64x64, defend: pSpriteKnovar_WalkRight64x64, down: pSpriteKnovar_WalkRight64x64},
		actions:[global.actionLibrary.attack, global.actionLibrary.ice]
	},
	{
		name: "Zhara",
		classe: "Paladin",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteZhara_WalkRight64x64 , attack: pSpriteZhara_WalkDown64x64, defend: pSpriteZhara_WalkRight64x64, down: pSpriteZhara_WalkRight64x64},
		actions:[global.actionLibrary.attack, global.actionLibrary.ice]
	},
	{
		name: "Hito",
		classe: "Mage",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteHito_WalkRight64x64 , attack: pSpriteHito_WalkDown64x64, defend: pSpriteHito_WalkRight64x64, down: pSpriteHito_WalkRight64x64},
		actions:[global.actionLibrary.attack, global.actionLibrary.ice]
	},
	{
		name: "Corvo",
		classe: "Conjurer",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 10,
		inteligence: 20,
		sprites: { idle: pSpriteMudinho_WalkRight64x64 , attack: pSpriteMudinho_WalkDown64x64, defend: pSpriteMudinho_WalkRight64x64, down: pSpriteMudinho_WalkRight64x64},
		actions:[global.actionLibrary.attack, global.actionLibrary.ice]
	},
]

//enemy data
global.enemies = {
	slimeG: 
	{
		name: "Slime",
		classe: "Monster",
		hp: 30,
		hpMax: 30,
		mp: 0,
		mpMax: 0,
		strength: 5,
		sprites: { idle: sSlime, attack: sSlimeAttack},
		actions: [global.actionLibrary.attack],
		xpValue : 15,
		AIscript : function()
		{
			//attack random party member
			var _action = actions [0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit,_index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
		

	}
}

/*
global.skills = 

{
	Pound:
	{
		Type: Corte,
		DPS: 5,
		mpCost: 0
	},
	Slash:
	{
		Type: Corte,
		DPS: 20,
		mpCost: 15
	},
	Slam:
	{
		Type: Esmagamento,
		DPS: 40,
		mpCost: 30
	},
	
	FireBall:
	{
		Type: Magico,
		DPS: 30,
		mpCost: 10
	},
	
	Cure:
	{
		Type: Suporte,
		hp: +30,
		mpCost: 20
	},
	
	Dark:
	{
		Type: Magico,
		DPS: 30,
		mpCost: 10
	}
		
	
}

	