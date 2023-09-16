var qinimigos = irandom_range(1,4);//aleatorio de 1 a 4 

//iniciar instancia de inimigos 1 a 4
if (qinimigos == 1){
	NewEncounter([global.enemies.slimeG] , sBgField);
}else if (qinimigos == 2){
	NewEncounter([global.enemies.slimeG, global.enemies.slimeG] , sBgField);
}else if (qinimigos == 3){
	NewEncounter([global.enemies.slimeG, global.enemies.slimeG, global.enemies.slimeG] , sBgField);
}else if (qinimigos == 4){
	NewEncounter([global.enemies.slimeG, global.enemies.slimeG, global.enemies.slimeG, global.enemies.slimeG] , sBgField);
}