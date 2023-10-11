// Celula em que o player está olhando

var _len = TILESIZE, _dir = moveDirection;

var _facingCellX = x + lengthdir_x(_len, _dir);
var _facingCellY = y + lengthdir_y(_len, _dir);

// Chegem se existe um NPC na posição final

var _npc = instance_position(_facingCellX, _facingCellY, oNPCParent);

if (_npc != noone && !instance_exists(oTextbox)) {
	_npc.showMessageIcon = true;
	
	if (keyboard_check_pressed(vk_enter)) {
		create_textbox(_npc.defaultDialog);
		
		// Fazendo o NPC olhar para o player
		
		_npc.moveDirection = point_direction(_npc.x, _npc.y, x, y);
	}
}
