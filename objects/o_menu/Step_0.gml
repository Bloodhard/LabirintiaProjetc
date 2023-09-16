
//Setando os Inputs
var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var accept_key = keyboard_check_pressed(vk_enter);



// Movimentacao Sub Menus
 
 op_max = array_length(opcoes[menu_level]);
// Movendo pelo menu

index += down_key - up_key;

if index >= op_max {index = 0};
if index < 0 {index = op_max-1};

// Acessando os menus

if accept_key {
	
	var _snl = menu_level;

switch (menu_level){
	case 0:
		switch (index){
		// Novo Jogo
		case 0: 
			room_goto_next(); 
			break;
		// Continuar Jogo
		case 1: break;
		// Configurações
		case 2: 
			menu_level = 1;
			break;
		// Sair
		case 3: 
			game_end(); 
			break;
		}
	break;
	
	case 1:
		switch(index){
		
		//Linguagem
		case 0:
		if opcoes[1][0] = "LINGUAGEM: PORTUGUES"{
		opcoes[1][0] = "LINGUAGEM: INGLES";
		} else if opcoes[1][0] = "LINGUAGEM: INGLES"{
			opcoes[1][0] = "LINGUAGEM: PORTUGUES";
		}
		break;
		
		//Efeito sonoro
		case 1:
		if opcoes[1][1] = "EFEITO SONORO: LIGADO"{
		opcoes[1][1] = "EFEITO SONORO: DESLIGADO";
		} else if opcoes[1][1] = "EFEITO SONORO: DESLIGADO"{
			opcoes[1][1] = "EFEITO SONORO: LIGADO";
		}
		break;
		
		//Musica
		case 2:
		if opcoes[1][2] = "MUSICA: LIGADO"{
		opcoes[1][2] = "MUSICA: DESLIGADO";
		} else if opcoes[1][2] = "MUSICA: DESLIGADO"{
			opcoes[1][2] = "MUSICA: LIGADO";
		}
		break;
		
		//Voltar
		case 3:
			menu_level = 0;
			break;
		}
	
	}
	if _snl != menu_level {index = 0};
	
	op_max = array_length(opcoes[menu_level]);
	
}