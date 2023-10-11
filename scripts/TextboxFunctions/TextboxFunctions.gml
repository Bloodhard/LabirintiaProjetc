global.textboxSequence = -1;

function create_textbox (_dialogueArray) {
	// Create textbox instance
	var _textbox = instance_create_layer(0,0, "Textbox", oTextbox);
	_textbox.start(_dialogueArray);
	
	// Create textbox Sequence 
	
	var _camX = camera_get_view_x(view_camera);
	var _camY = camera_get_view_y(view_camera);
	global.textboxSequence = layer_sequence_create("Textbox", _camX, _camY, seqTextBox_Idle);
	
	//Pause
	
	global.paused = true;
}

function close_textbox () {
	layer_sequence_destroy(global.textboxSequence);
	instance_destroy(oTextbox);
	
	//Resume
	
	global.paused = false;
	
	// Limpa a tecla enter
	
	keyboard_clear(vk_enter);
}