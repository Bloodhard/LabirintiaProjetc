//Desenharfundo arte
function DesenharFundoBG(){
	draw_sprite(battleBackground,0,x,y);
}

//Desenhar unidades por ordem de profundidade (depth order)
function DesenharUnidadeDepthOrder(){
    var _unitWithCurrentTurn = unitTurnOrder[turn].id;
	for (var i = 0; i < array_length(unitRenderOrder); i++)
	{
		with (unitRenderOrder[i])
		{
			draw_self();
		}
	}
}


//Desenhar UI boxes
function DesenharUIBOX(){
	draw_sprite_stretched(sBox,0,x+173,y+312,403,100);//Desenhar box para menu de batalha (Grande)
	draw_sprite_stretched(sBox,0,x,y+312,173,100); //Desenhar Box para menu de batalha (Pequeno)
}

//Macro de Posições
#macro COLUMN_ENEMY 60
#macro COLUMN_NAME 195
#macro COLUMN_HP 296
#macro COLUMN_MP 397


//Desenhar headings (Cabeçalhos)
function DesenharHeadings(){
	draw_set_font(fnM3x6);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_grey);
	draw_text(x+COLUMN_ENEMY,y+320,"ENEMY");
	draw_text(x+COLUMN_NAME,y+320,"NAME");
	draw_text(x+COLUMN_HP,y+320,"HP");
	draw_text(x+COLUMN_MP,y+320,"MP");
}


//Desenhar nomes de inimigos na UIBOX
function DesenharNomesInimigos(){
	var _unitWithCurrentTurn = unitTurnOrder[turn].id;
	draw_set_font(fnOpenSansPX);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	var _drawnLimit = 3;
	var _drawn = 0;
	for (var i = 0; (i < array_length(enemiesUnits)) && (_drawn < _drawnLimit); i++)
	{
		var _char = enemiesUnits[i];
		if (_char.hp > 0){
			_drawn++
			draw_set_halign(fa_left);
			draw_set_color(c_white);
			if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
			draw_text(x+COLUMN_ENEMY, y+340+(i*12), _char.name);
		}
	}
}


//Desenhar nomes da PT na UIBOX
function DesenharNomesAliados(){
	var _unitWithCurrentTurn = unitTurnOrder[turn].id;
	for (var i = 0; i < array_length(partyUnits); i++)
	{
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		var _char = partyUnits[i];
		if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
		if (_char.hp <= 0) draw_set_color(c_red);
		draw_text(x+COLUMN_NAME, y+340+(i*12), _char.name);
		draw_set_halign(fa_right);
	
		draw_set_color(c_white);
		if (_char.hp < (_char.hpMax * 0.50)) draw_set_color(c_orange);
		if (_char.hp <= 0) draw_set_color(c_red);
		draw_text(x+COLUMN_HP+50, y+340+(i*12), string(_char.hp) + "/" + string(_char.hpMax));
	
		draw_set_color(c_white);
		if (_char.mp < (_char.mpMax * 0.50)) draw_set_color(c_orange);
		if (_char.mp <= 0) draw_set_color(c_red);
		draw_text(x+COLUMN_MP+50, y+340+(i*12), string(_char.hp) + "/" + string(_char.mpMax));
	
		draw_set_color(c_white);
	}
}


DesenharFundoBG();
DesenharUnidadeDepthOrder();
DesenharUIBOX();
DesenharHeadings();
DesenharNomesInimigos();
DesenharNomesAliados();