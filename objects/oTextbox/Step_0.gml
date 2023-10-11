if (!started) exit;

// Get Message

var _messageData = dialogue[messageIndex];
var _message = _messageData.message;

// Mensagem Incompleta

if (characters < string_length(_message)){
	
	// Velocidade de escrita para esse frame
	
	var _textSpeed = textSpeed;
	
	
	// Lê a letra sendo escrita
	
	var _char = string_char_at(_message, characters);
	
	
	// Adiciona lentidão nos caracteres especiais
	
	if (_char == "." || _char == "!" || _char == "," || _char == "?") {
		_textSpeed /= 6;
	}
	
	// Aumenta o contador de caracter
	
	characters += _textSpeed;
}

// Mensagem completa
else {
	if (keyboard_check_pressed(vk_enter)) {
		if ((messageIndex + 1) < array_length(dialogue)) {
			next_message();
		}
		else {
			close_textbox();
		}
	}
}