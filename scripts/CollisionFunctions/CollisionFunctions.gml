function collision(tileX, tileY){
		//Tilles
		var _tilemap = oRoomManager.colTilemap;
		
		if (tilemap_get(_tilemap, tileX, tileY)) return true;
		
		
		
		// Objects
		
		var _roomX = to_room(tileX + 0.5);
		var _roomY = to_room(tileY + 0.5);
		
		if (position_meeting(_roomX, _roomY, oCollision)) return true;
		
		// NPCS
		
		if (position_meeting(_roomX, _roomY, oCharacterParent)) return true;
		
		return false;
}