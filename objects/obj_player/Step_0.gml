var chao = place_meeting(x, y + 1, obj_block)

var esquerda = keyboard_check(ord("A"))
var direita = keyboard_check(ord("D"))
var pulando = keyboard_check_pressed(ord("W"))
var avanco_h = (direita - esquerda) * velocidade_h_max
velocidade_horizontal = lerp(velocidade_horizontal, avanco_h,velocidade)

if(abs(velocidade_horizontal) < 0.6){
	velocidade_horizontal = 0

}

if (hit > 0){
	hit -= 0.05


}

if(velocidade_horizontal < 0){
	
	image_xscale = -1

}

if(velocidade_horizontal > 0){
	
	image_xscale = 1

}



if (vida <= 0){
	x = global.checkpoint_x
	y = global.checkpoint_y
	vida = 3
	
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

if(timer >= timer_max){
	if(instance_exists(obj_enemy) && !y < obj_enemy.y){
		if(place_meeting(x, y, obj_enemy)){
			if(!velocidade_vertical > 0){
				if(instance_nearest(x, y, obj_enemy).direction = 180){
					velocidade_horizontal -= knockback
				}
				if(instance_nearest(x, y, obj_enemy).direction = 0){
					velocidade_horizontal += knockback
				}
				vida --
				hit = 1
				timer = 0
			}
		
		}
	}

}else{
	timer ++

}

if(timer >= timer_max){

	if(instance_exists(obj_enemy2) && !y < obj_enemy2.y){
			if(place_meeting(x, y, obj_enemy2)){
				if(!velocidade_vertical > 0){
					if(instance_nearest(x, y, obj_enemy2).direction = 180){
						velocidade_horizontal -= knockback
					}
					if(instance_nearest(x, y, obj_enemy2).direction = 0){
						velocidade_horizontal += knockback
					}
					vida --
					hit = 1
					timer = 0

				}
		
			}
	}
}else{
	timer ++

}

if(timer >= timer_max){
	if(instance_exists(obj_enemy3) && !y < obj_enemy3.y){
		if(place_meeting(x, y, obj_enemy3)){
			if(!velocidade_vertical > 0){
				if(instance_nearest(x, y, obj_enemy3).direction = 180){
					velocidade_horizontal -= knockback
				}
				if(instance_nearest(x, y, obj_enemy3).direction = 0){
					velocidade_horizontal += knockback
				}
				vida = 0
				hit = 1
				timer = 0
			}
		
		}
	}

}else{
	timer ++

}