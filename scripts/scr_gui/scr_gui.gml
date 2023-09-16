
function Cria_menu(_pega_larg_max,_get_alt_max, distancia, lista_arg)
{
	
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

				draw_text(_pega_larg_max, _get_alt_max + (distancia * i), lista_arg[menu_level][i]);
			}
		
		}

	
	


