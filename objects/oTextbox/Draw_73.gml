//Se não existir

if (!instance_exists(oBoxName) || !started) exit;

// Selecionando a Fonte

draw_set_font(GameFont);
draw_set_color(c_white);

// Valores

var _messageData = dialogue[messageIndex];
var _name = _messageData.speaker.name;
var _message = _messageData.message;
var _image = _messageData.speaker.image;

_message = string_copy(_message, 0, characters);

// Desenhar nome

draw_text(oBoxName.x, oBoxName.y, _name);

// Desenhar Mensagem

var _width = oBoxMessage.sprite_width;

draw_text_ext(oBoxMessage.x, oBoxMessage.y, _message, -1, _width);

// Desenhar Imagem

var _centerX = oBoxImage.x + oBoxImage.sprite_width / 2;
var _centerY = oBoxImage.y + oBoxImage.sprite_height / 2;
var _scaleX = oBoxImage.sprite_width / sprite_get_width(_image);
var _scaleY = oBoxImage.sprite_height / sprite_get_height(_image);

draw_sprite_ext(_image, 0, _centerX, _centerY, _scaleX, _scaleY, 0, -1, 1);