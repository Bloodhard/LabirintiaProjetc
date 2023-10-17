randomize();

// Create the surface for the shadows
shadow_surface_ = noone;

// Get the tile layer map id
var _wall_map_id = layer_tilemap_get_id("WallTiles");

// Set up the grid
width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;
grid_ = ds_grid_create(width_, height_);
ds_grid_set_region(grid_, 0, 0, width_ - 1, height_ - 1, VOID);

// Create the controller
var _controller_x = width_ div 2;
var _controller_y = height_ div 2;
var _controller_direction = irandom(3);
var _steps = 400;

var _player_start_x = _controller_x * CELL_WIDTH + CELL_WIDTH/2;
var _player_start_y = _controller_y * CELL_HEIGHT + CELL_HEIGHT/2;



instance_create_layer(_player_start_x, _player_start_y, "Instances", oPlayer);


// Choose the direction change odds
var _direction_change_odds = 1;

// Generate the level
repeat (_steps) {
	grid_[# _controller_x, _controller_y] = FLOOR;
	
	// Rnadomize the direction
	if (irandom(_direction_change_odds) == _direction_change_odds) {
		_controller_direction = irandom(3);	
	}
	
	// Move the controller
	var _x_direction = lengthdir_x(1, _controller_direction * 90);
	var _y_direction = lengthdir_y(1, _controller_direction * 90);
	_controller_x += _x_direction;
	_controller_y += _y_direction;
	
	// Make sure we don't move outside the room
	if (_controller_x < 2 || _controller_x >= width_ - 2) {
		_controller_x += -_x_direction * 2;
	}
	if (_controller_y < 2 || _controller_y >= height_ - 2) {
		_controller_y += -_y_direction * 2;
	}
	
}

// Create the walls tiles
for (var _y = 1; _y < height_-1; _y++) {
	for (var _x = 1; _x < width_-1; _x++) {
		if (grid_[# _x, _y] != FLOOR) {
			var _north_tile = grid_[# _x, _y-1] == VOID;
			var _west_tile = grid_[# _x-1, _y] == VOID;
			var _east_tile = grid_[# _x+1, _y] == VOID;
			var _south_tile = grid_[# _x, _y+1] == VOID;
			
			
			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;
			if (_tile_index == 1) {
				grid_[# _x, _y] = FLOOR;
			
			}
		}
	}
}

// Create the walls tiles
for (var _y = 1; _y < height_-1; _y++) {
	for (var _x = 1; _x < width_-1; _x++) {
		if (grid_[# _x, _y] != FLOOR) {
			var _north_tile = grid_[# _x, _y-1] == VOID;
			var _west_tile = grid_[# _x-1, _y] == VOID;
			var _east_tile = grid_[# _x+1, _y] == VOID;
			var _south_tile = grid_[# _x, _y+1] == VOID;
		
			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;
			tilemap_set(_wall_map_id, _tile_index, _x, _y);
	}
 }
}

// ... (seu código existente)

// Calcular as coordenadas iniciais do jogador (você já tem isso no seu código)
var player_start_x = _player_start_x;
var player_start_y = _player_start_y;

// Definir a distância mínima entre inimigos e jogador (ajuste conforme necessário)
var min_distance_to_player = CELL_WIDTH * 2; // Por exemplo, 2 células de largura

// Definir a distância mínima entre inimigos (Utilizado para fazer o Portal)(ajuste conforme necessário)
var min_distance_to_enemy = CELL_WIDTH * 2;

// Definir a distância mínima entre os portais (Utilizado para fazer o Portal)
var min_distance_to_portal = CELL_WIDTH * 2;

// Criar instâncias de inimigos alinhados no meio da célula de chão dentro dos limites do quarto
for (var _y = 1; _y < height_-1; _y++) {
    for (var _x = 1; _x < width_-1; _x++) {
        if (grid_[# _x, _y] == FLOOR) {
            // Verificar se é um local de chão antes de criar um inimigo
            var chance_of_enemy = 0.1; // Ajuste essa probabilidade conforme necessário
            if (random(1) < chance_of_enemy) {
                // Calcular as coordenadas do inimigo para o centro da célula
                var enemy_x = (_x + 1) * CELL_WIDTH;
                var enemy_y = (_y + 1) * CELL_HEIGHT;
				
		
                // Verificar se as coordenadas do inimigo estão dentro dos limites do quarto
                if (enemy_x >= 0 && enemy_x < room_width && enemy_y >= 0 && enemy_y < room_height) {
                    // Verificar se a distância entre o inimigo e o jogador é maior que a distância mínima
                    var distance_to_player = point_distance(player_start_x, player_start_y, enemy_x, enemy_y);
                    if (distance_to_player >= min_distance_to_player) {
                        // Criar uma instância de inimigo no centro da célula de chão
                        instance_create_layer(enemy_x, enemy_y, "Instances", oSlime);
                    }
                }
            }
        }
    }
}


var contador_porta1 = 0;
// Criar instâncias de Portas1 alinhados no meio da célula de chão dentro dos limites do quarto
for (var _y = 1; _y < height_-1; _y++) {
    for (var _x = 1; _x < width_-1; _x++) {
        if (grid_[# _x, _y] == FLOOR) {
            // Verificar se é um local de chão antes de criar um inimigo
            var chance_of_portal = 0.1; // Ajuste essa probabilidade conforme necessário

            if (random(1) < chance_of_enemy) {
                // Calcular as coordenadas do inimigo para o centro da célula
                var portal_x = (_x + 1) * CELL_WIDTH;
                var portal_y = (_y + 1) * CELL_HEIGHT;
				
		
                // Verificar se as coordenadas do inimigo estão dentro dos limites do quarto
                if (portal_x >= 0 && portal_x < room_width && portal_y >= 0 && portal_y < room_height) {
                    // Verificar se a distância entre o inimigo e o jogador é maior que a distância mínima
                    var distance_to_player_portal = point_distance(player_start_x, player_start_y, portal_x, portal_y);
					var distance_to_enemy_portal = point_distance(enemy_x, enemy_y, portal_x, portal_y);
                    if (distance_to_player_portal >= min_distance_to_player && distance_to_enemy_portal >= min_distance_to_enemy && contador_porta1 < 1) {
                        // Criar uma instância de inimigo no centro da célula de chão
                        contador_porta1 ++;
						instance_create_layer(portal_x, portal_y, "Instances", oWarpBlock_to_Labiritnto);
                    }
                }
            }
        }
    }
}


// Criar instâncias de Portas2alinhados no meio da célula de chão dentro dos limites do quarto
var contador_porta2 = 0;
for (var _y = 1; _y < height_-1; _y++) {
    for (var _x = 1; _x < width_-1; _x++) {
        if (grid_[# _x, _y] == FLOOR) {
            // Verificar se é um local de chão antes de criar um inimigo
            var chance_of_portal2 = 0.1; // Ajuste essa probabilidade conforme necessário

            if (random(1) < chance_of_portal2) {
                // Calcular as coordenadas do inimigo para o centro da célula
                var portal_x2 = (_x + 1) * CELL_WIDTH;
                var portal_y2 = (_y + 1) * CELL_HEIGHT;
				
		
                // Verificar se as coordenadas do inimigo estão dentro dos limites do quarto
                if (portal_x2 >= 0 && portal_x2 < room_width && portal_y2 >= 0 && portal_y2 < room_height) {
                    // Verificar se a distância entre o inimigo e o jogador é maior que a distância mínima
                    var distance_to_player_portal2 = point_distance(player_start_x, player_start_y, portal_x2, portal_y2);
					var distance_to_enemy_portal2 = point_distance(enemy_x, enemy_y, portal_x2, portal_y2);
					var distance_to_portal1 = point_distance(portal_x, portal_y, portal_x2, portal_y2);
                    if (distance_to_player_portal2 >= min_distance_to_player && distance_to_enemy_portal2 >= min_distance_to_enemy && distance_to_portal1 >= min_distance_to_portal && contador_porta2 < 1) {
                        // Criar uma instância de inimigo no centro da célula de chão
						contador_porta2 ++;
                        instance_create_layer(portal_x2, portal_y2, "Instances", oWarpBlock_to_Lobby);
                    }
                }
            }
        }
    }
}

// ... (resto do seu código)
