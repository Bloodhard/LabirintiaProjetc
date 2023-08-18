//Desenharfundo arte
draw_sprite(battleBackground,0,x,y);

//Desenhar unidades por ordem de profundidade (depth order)
var _unitWithCurrentTurn = unitTurnOrder[turn].id;
for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();
	}
}


//Desenhar UI boxes
draw_sprite_stretched(sBox,0,x+173,y+312,403,100);//Desenhar box para menu de batalha (Grande)
draw_sprite_stretched(sBox,0,x,y+312,173,100); //Desenhar Box para menu de batalha (Pequeno)

//Posições
#macro COLUMN_ENEMY 60
#macro COLUMN_NAME 195
#macro COLUMN_HP 296
#macro COLUMN_MP 397


//Desenhar headings (Cabeçalhos)
draw_set_font(fnM3x6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_grey);
draw_text(x+COLUMN_ENEMY,y+320,"ENEMY");
draw_text(x+COLUMN_NAME,y+320,"NAME");
draw_text(x+COLUMN_HP,y+320,"HP");
draw_text(x+COLUMN_MP,y+320,"MP");
