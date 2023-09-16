draw_set_font(fnM3x6);

var _dist = 55;
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();
var _x1 = _gui_width / 2;
var _y1 = _gui_height / 2;

for (var i = 0; i < op_max; i++)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(index = i)
	{
		draw_set_color(c_yellow);
	}
	else
	{
		draw_set_color(c_white);
	}

	draw_text(_x1, _y1 + (_dist * i), opcoes[i]);

}

draw_set_font(-1);