global.actionLibrary =
{
	attack:
	{
		name: "Ataque",
		description: "{0} Ataca!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation : "attack",
		effectSprite: sAttackBonk,
		effectOnTarget : MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			BattleChangeHP(_targets[0], -_damage, 0);
		}
	},
	ice :
	{
		name: "Gelo",
		description : "{0} conjura Gelo!",
		subMenu: "Magic",
		mpCost: 4,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.VARIES,
		userAnimation: "cast",
		effectSprite: sAttackIce,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.inteligence + random_range(-_user.inteligence * 0.25, _user.inteligence * 0.25));
			BattleChangeHP(_targets[0], -_damage);
			//BattleChangeMP(_user, -mpCost)
		}
	},
	fire :
	{
		name: "Fogo",
		description : "{0} ataca com Fogo!",
		subMenu: "Magic",
		mpCost: 4,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.VARIES,
		userAnimation: "cast",
		effectSprite: sFireDrop,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.inteligence + random_range(-_user.inteligence * 0.25, _user.inteligence * 0.25));
			BattleChangeHP(_targets[0], -_damage);
			//BattleChangeMP(_user, -mpCost)
		}
	},
	divineSlash :
	{
		name: "Corte Divino",
		description : "{0} Purifica os impuros!",
		subMenu: "Magic",
		mpCost: 4,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sAttackDVSlash,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.inteligence * 0.25, _user.inteligence * 0.25));
			BattleChangeHP(_targets[0], -_damage);
			//BattleChangeMP(_user, -mpCost)
		}
	},
	darkBall :
	{
		name: "Esfera Nula",
		description : "{0} Convoca o vazio!",
		subMenu: "Magic",
		mpCost: 4,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.VARIES,
		userAnimation: "cast",
		effectSprite: sAttackVoid,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.inteligence + random_range(-_user.inteligence * 0.25, _user.inteligence * 0.25));
			BattleChangeHP(_targets[0], -_damage);
			//BattleChangeMP(_user, -mpCost)
		}
	},
	
	surprise :
	{
		name: "Golpe Surpresa",
		description : "{0} Mira no distraido!",
		subMenu: "Magic",
		mpCost: 4,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sAttackKnnovar,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			BattleChangeHP(_targets[0], -_damage);
			//BattleChangeMP(_user, -mpCost)
		}
	},
	
	hollyA :
	{
		name: "Luz Sagrada",
		description : "{0} Traz retribuicao divina!",
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
	},
	
	heal :
	{
		name: "Cura",
		description : "{0} Renova o espirito dos caidos!",
		subMenu: "Magic",
		mpCost: 4,
		targetRequired: true,
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.VARIES,
		userAnimation: "cast",
		effectSprite: sHealGround,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _heal = ceil(_user.inteligence + random_range(-_user.inteligence * 0.25, _user.inteligence * 0.25));
			BattleChangeHP(_targets[0], +_heal);
			//BattleChangeMP(_user, -mpCost)
		}
	},
	
	
	
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
		strength: 2,
		inteligence: 30,
		sprites: { idle: pSpriteGodhard_WalkRight64x64 , attack: pSpriteGodhard_WalkDown64x64, defend: pSpriteGodhard_WalkRight64x64, down: pSpriteGodhard_WalkRight64x64, cast: pSpriteGodhard_Cast},
		actions:[global.actionLibrary.attack, global.actionLibrary.hollyA, global.actionLibrary.heal]
	},
	{
		name: "Knovar",
		classe: "Rogue",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 25,
		inteligence: 10,
		sprites: { idle: pSpriteKnovar_WalkRight64x64 , attack: pSpriteKnovar_Attack, defend: pSpriteKnovar_WalkRight64x64, down: pSpriteKnovar_WalkRight64x64},
		actions:[global.actionLibrary.attack, global.actionLibrary.surprise]
	},
	{
		name: "Zhara",
		classe: "Paladin",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 30,
		inteligence: 10,
		sprites: { idle: pSpriteZhara_WalkRight64x64 , attack: pSpriteZhara_Attack, defend: pSpriteZhara_WalkRight64x64, down: pSpriteZhara_WalkRight64x64},
		actions:[global.actionLibrary.attack, global.actionLibrary.divineSlash]
	},
	{
		name: "Hito",
		classe: "Mage",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 5,
		inteligence: 20,
		sprites: { idle: pSpriteHito_WalkRight64x64 , attack: pSpriteHito_WalkDown64x64, defend: pSpriteHito_WalkRight64x64, down: pSpriteHito_WalkRight64x64, cast: pSpriteHito_Cast},
		actions:[global.actionLibrary.attack, global.actionLibrary.ice, global.actionLibrary.fire]
	},
	{
		name: "Corvo",
		classe: "Conjurer",
		hp: 100,
		hpMax: 100,
		mp: 200,
		mpMax: 200,
		strength: 5,
		inteligence: 20,
		sprites: { idle: pSpriteMudinho_WalkRight64x64 , attack: pSpriteMudinho_WalkDown64x64, defend: pSpriteMudinho_WalkRight64x64, down: pSpriteMudinho_WalkRight64x64, cast: pSpriteMudinho_Cast},
		actions:[global.actionLibrary.attack, global.actionLibrary.darkBall]
	},
]

//enemy data
global.enemies = {
	slimeG: 
	{
		name: "Slime",
		classe: "Monster",
		hp: 20,
		hpMax: 20,
		mp: 0,
		mpMax: 0,
		strength: 5,
		sprites: { idle: sSlime, attack: sSlimeAttack},
		actions: [global.actionLibrary.attack],
		xpValue : 15,
		AIscript : function()
		{
			//Ataca um membro da equipe do jogador
			var _action = actions [0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit,_index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
		

	},
	MinotauroG: 
	{
		name: "Minotauro[BOSS]",
		classe: "Monster",
		hp: 10,
		hpMax: 10,
		mp: 100,
		mpMax: 100,
		strength: 40,
		sprites: { idle: Minotauro128x128, attack: Minotauro128x128},
		actions: [global.actionLibrary.attack],
		xpValue : 1000,
		AIscript : function()
		{
			//Ataca um membro da equipe do jogador
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



	