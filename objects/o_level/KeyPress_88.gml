/*if(file_exists("save.sav"))file_delete("save.sav");
ini_open("save.sav");
ini_write_real("Jogador", "x_atual", oPlayer.x);
ini_write_real("Jogador", "y_atual", oPlayer.y);
ini_write_real("Jogador", "sala_atual", room.id);
ini_close();
show_message("Jogo Salvo");*/

var _saveData = array_create(0);

with (o_level) 
{
	var _saveEntity =
	{
		obj: object_get_name(object_index),
		obj_persistent : object_get_persistent(object_index),
		y: y,
		x: x,
		room: room
	}
	
	array_push(_saveData, _saveEntity);
}

var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedgame.save");
buffer_delete(_buffer);

show_debug_message("Jogo Salvo" + _string)
