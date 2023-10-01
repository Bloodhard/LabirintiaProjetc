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
battleWaitTimeFrames = 30;
battleWaitTimeRemaining = 5;
currentUser = noone;
currentAction = -1;
currentTargets = noone;


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
	// Get Current Unit
	var _unit = unitTurnOrder[turn];
	
	//Is the unit dead or unable to act?
	if (!instance_exists(_unit)) || (_unit.hp <= 0)
	{
		var battleState = BattleStateVictoryCheck;
		exit;
	}
	
	//Select an action to perform
	//BeginAction(_unit.id, global.actionLibrary.attack, _unit.id);
	
	// if unit is player controlled:
	if (_unit.object_index == oBattleUnitPC)
	{
			var _action = global.actionLibrary.attack;
			var _possibleTargets = array_filter(oBattle.enemiesUnits, function(_unit,_index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			BeginAction(_unit.id, _action, _target);
	}
	else
	{
		//if unit is AI controlled:
		var _enemyAction = _unit.AIscript();
		if(_enemyAction != -1) BeginAction(_unit.id, _enemyAction[0], _enemyAction[1]);
	}
}

function BeginAction(_user, _action, _targets)
{
	currentUser = _user;
	currentAction = _action;
	currentTargets = _targets;
	if(!is_array(currentTargets)) currentTargets = [currentTargets];
	battleWaitTimeRemaining = battleWaitTimeFrames;
	with(_user)
	{
		acting = true;
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
				
		
		}
		currentAction.func(currentUser, currentTargets);
			
	}
	else //wait for delay and then end the turn
	{
		battleWaitTimeRemaining--
		if(battleWaitTimeRemaining == 0)
		{
			battleState = BattleStateVictoryCheck;
		}
	}
}

function BattleStateVictoryCheck()
{
	battleState = BattleStateTurnProgression;
}

function BattleStateTurnProgression()
{
	turnCount++;
	turn++;
	//Loop turns
	if (turn > array_length(unitTurnOrder) - 1)
	{
		turn = 0;
		roundCount++;
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
