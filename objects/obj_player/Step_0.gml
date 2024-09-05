var chao = place_meeting(x, y + 1, obj_block)

var esquerda = keyboard_check(ord("A"))
var direita = keyboard_check(ord("D"))
var pulando = keyboard_check_pressed(ord("W"))
var avanco_h = (direita - esquerda) * velocidade_h_max
velocidade_horizontal = lerp(velocidade_horizontal, avanco_h,velocidade)

if(abs(velocidade_horizontal) < 0.6){
	velocidade_horizontal = 0

}

if(velocidade_horizontal < 0){
	
	image_xscale = -1

}

if(velocidade_horizontal > 0){
	
	image_xscale = 1

}

if(instance_exists(obj_enemy) && !y < obj_enemy.y){
	if(place_meeting(x, y, obj_enemy)){
		if(!velocidade_vertical > 0){
			x = global.checkpoint_x
			y = global.checkpoint_y
		}
		
	}
}

if (!chao) {
	if(velocidade_vertical < 0){
		sprite_index = spr_player_jump
	}
	else if(velocidade_vertical > 0){
		sprite_index = spr_player_falling
	}
	velocidade_vertical += gravidade
}
else {
	if(velocidade_horizontal = 0){
		sprite_index = spr_player
	}
	else if (velocidade_horizontal != 0){
		sprite_index = spr_player_run
	}
}


if(chao && pulando) {

	velocidade_vertical += -pulo

}

velocidade_horizontal = clamp(velocidade_horizontal, -velocidade_h_max, velocidade_h_max)