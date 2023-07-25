instance_deactivate_all(true); //destativar todas as instancias

units = [];

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