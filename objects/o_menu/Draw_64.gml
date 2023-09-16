global.font_main = draw_set_font(fnM3x6);

var _dist = 55;
var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();
var _get_x1 = _gui_largura / 2;
var _get_y1 = _gui_altura / 2;


Cria_menu(_get_x1, _get_y1, _dist, opcoes);
draw_set_font(-1);