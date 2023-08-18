instance_deactivate_all(true); //destativar todas as instancias

units = [];
turn = 0;
unitTurnOrder = [];
unitRenderOrder = [];

//fazer/ criar inimigos 
for (var i=0; i < array_length(enemies); i++)
{
	enemiesUnits[i] = instance_create_depth(x+400+(i*10), y+68+(i*50), depth-10, oBattleUnitEnemy, enemies[i]);	
	array_push(units, enemiesUnits[i]);
}

//fazer/criar Party(grupo)
for (var i=0; i < array_length(global.party); i++)
{
	partyUnits[i] = instance_create_depth(x+100+(i*10), y+68+(i*50), depth-10, oBattleUnitPC, global.party[i]);	
	array_push(units, partyUnits[i]);
}

//Turn Order
unitTurnOrder = array_shuffle(units);

//Get Render Order
RefreshRenderOrder = function()
{
	unitRenderOrder = [];
	array_copy(unitRenderOrder,0,units,0,array_length(units));
	array_sort(unitRenderOrder,function(_1, _2)
	{
		return _1.y - _2.y;
	});
}
RefreshRenderOrder();