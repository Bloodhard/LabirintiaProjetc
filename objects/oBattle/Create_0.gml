//destativar todas as instancias
function DesativarInstancias(){
	instance_deactivate_all(true); 
}


units = [];
turn = 0;
unitTurnOrder = [];
unitRenderOrder = [];
turnCount = 0;
roundCount = 0;
battleText = "";
battleWaitTimeFrames = 30;
battleWaitTimeRemaining = 0;
currentUser = noone;
currentAction = -1;
currentTargets = noone;

//Make targetting cursor
cursor =
{
	currentUser : noone,
	currentAction : -1,
	currentTarget : noone,
	targetside: -1,
	targetIndex: 0,
	targetAll: false,
	confirmDelay: 0,
	active: false
};



enemiesUnits = [global.enemies.slimeG];

//fazer/ criar inimigos 
function CriarInimigos(){
	for (var i=0; i < array_length(enemies); i++)
	{
		enemiesUnits[i] = instance_create_depth(x+400+(i*10), y+68+(i*50), depth-10, oBattleUnitEnemy, enemies[i]);	
		array_push(units, enemiesUnits[i]);
	}
}

//fazer/criar Party(grupo)
function CriarAliados (){
	for (var i=0; i < array_length(global.party); i++)
	{
		partyUnits[i] = instance_create_depth(x+100+(i*10), y+68+(i*50), depth-10, oBattleUnitPC, global.party[i]);	
		array_push(units, partyUnits[i]);
	}
}

//Turn Order
function OrdemTurnos(){
	unitTurnOrder = array_shuffle(units);
}

//Get Render Order
function OrdemDeRenderizacao (){
	RefreshRenderOrder = function()
	{
		unitRenderOrder = [];
		array_copy(unitRenderOrder,0,units,0,array_length(units));
		array_sort(unitRenderOrder,function(_1, _2)
		{
			return _1.y - _2.y;
		});
	}
}


function BattleStateSelectAction()
{
	if (!instance_exists(obj_menu))
	{
		// Get Current Unit
		var _unit = unitTurnOrder[turn];
	
		//Is the unit dead or unable to act?
		if (!instance_exists(_unit)) || (_unit.hp <= 0)
		{
			//pode ser feito removendo o item do Array
			//array_delete(unitTurnOrder, turn, 1);
			//ou
		    battleState = BattleStateVictoryCheck;
			exit;
		}
	
		//Select an action to perform
		//BeginAction(_unit.id, global.actionLibrary.attack, _unit.id);
	
		// if unit is player controlled:
		if (_unit.object_index == oBattleUnitPC)
		{
			//Compile the action menu
			var _menuOptions = [];
			var _subMenus = {};
			
			var _actionList = _unit.actions;
			
			for (var i = 0; i < array_length(_actionList); i++)
			{
				var _action = _actionList[i];
				var _available = true; // Later we'll check mp cost here
				var _nameAndCount = _action.name; // Later we'll modify the name to include the item count, if the action is an item.
				if (_action.subMenu == -1)
				{
					array_push(_menuOptions, [_nameAndCount, MenuSelectAction, [_unit, _action], _available]);
				}
				else
				{
					// create or add to a submenu
					if (is_undefined(_subMenus[$ _action.subMenu]))
					{
						variable_struct_set(_subMenus, _action.subMenu, [[_nameAndCount, MenuSelectAction, [_unit, _action], _available]]);
					}
					else
					{
						array_push(_subMenus[$ _action.subMenu], [_nameAndCount, MenuSelectAction, [_unit, _action], _available]);
					}
				}
				
				
				}
				//turn sub menus into an array
				var _subMenusArray = variable_struct_get_names(_subMenus);
				for (var i = 0; i < array_length(_subMenusArray); i++)
				{
					//sort submenu if needed
					//(here)
					
					//add back option at the end of each submenu
					array_push(_subMenus[$ _subMenusArray[i]], ["Back", MenuGoBack, -1, true]);
					// add submenu into main menu
					array_push(_menuOptions, [_subMenusArray[i], SubMenu, [_subMenus[$ _subMenusArray[i]]], true]);
			}

			Menu(x+10, y+110, _menuOptions, , 74, 60);
				
		}
		else
		{
			//if unit is AI controlled:
			var _enemyAction = _unit.AIscript();
			if(_enemyAction != -1) BeginAction(_unit.id, _enemyAction[0], _enemyAction[1]);
		}
	}
}

function BeginAction(_user, _action, _targets)
{
	currentUser = _user;
	currentAction = _action;
	currentTargets = _targets;
	battleText = string_ext(_action.description, [_user.name]);
	if(!is_array(currentTargets)) currentTargets = [currentTargets];
	battleWaitTimeRemaining = battleWaitTimeFrames;
	with(_user)
	{
		acting = true;
		// play user animation if it is defined for that action, and that user
		if(!is_undefined(_action[$ "userAnimation"])) && (!is_undefined(_user.sprites[$ _action.userAnimation]))
		{
			sprite_index = sprites[$ _action.userAnimation];
			image_index = 0;
		}
	}
	battleState = BattleStatePerfomAction;
}



function BattleStatePerfomAction()
{
	//if animation etc is still playing
	if (currentUser.acting)
	{
		//when it ends, perform action effect if it exists
		if (currentUser.image_index >= currentUser.image_number -1)
		{
			with(currentUser)
			{
				sprite_index = sprites.idle;
				image_index = 0;
				acting = false;
			}
		

		if (variable_struct_exists(currentAction, "effectSprite"))
		{
			if (currentAction.effectOnTarget == MODE.ALWAYS) || ( (currentAction.effectOnTarget == MODE.VARIES) && (array_length(currentTargets) <= 1) )
			{
				for (var i = 0; i < array_length(currentTargets); i++)
				{
					instance_create_depth(currentTargets[i].x,currentTargets[i].y, currentTargets[i].depth-1, oBattleEffect,{sprite_index: currentAction.effectSprite});
				}
			}
			else //play it at 0,0
			{
				var _effectSprite = currentAction.effectSprite
				if (variable_struct_exists(currentAction, "effectSpriteNoTarget")) _effectSprite = currentAction.effectSpriteNoTarget;
				instance_create_depth(x,y,depth-100,oBattleEffect,{sprite_index : _effectSprite});
			}
		}
		currentAction.func(currentUser, currentTargets);
		
			
	}
	}
	else //wait for delay and then end the turn
	{
		if (!instance_exists(oBattleEffect))
		{
			battleWaitTimeRemaining--
			if(battleWaitTimeRemaining == 0)
			{
				battleState = BattleStateVictoryCheck;
			}
		}
	}
}

function BattleStateVictoryCheck()
{
	battleState = BattleStateTurnProgression;
}

function BattleStateTurnProgression()
{
	battleText = "";
	turnCount++;
	turn++;
	
	var contadorInimigosDerrotados = 0;
	// Verificar todos os inimigos na array enemiesUnits
	for (var i = 0; i < array_length(enemiesUnits); i++) 
	{
		 var inimigo = enemiesUnits[i];
		 
		 if (inimigo.hp <= 0) 
		 {
		 // Inimigo derrotado, aumentar o contador
		 contadorInimigosDerrotados++;
		 }
	}
	
	// Verificar se todos os inimigos estão derrotados
	if (contadorInimigosDerrotados == array_length(enemiesUnits)){
		 instance_deactivate_all(true);
		 instance_destroy();
		 instance_activate_all();
		 display_set_gui_size(320,180);
	}
	
	//Loop turns
	if (turn > array_length(unitTurnOrder) - 1)
	{
		turn = 0;
	    roundCount++;
		var contadorInimigosDerrotados = 0;

	}
	battleState = BattleStateSelectAction;
}
battleState = BattleStateSelectAction;

DesativarInstancias();
CriarInimigos();
CriarAliados();
OrdemTurnos();
OrdemDeRenderizacao();
RefreshRenderOrder();
