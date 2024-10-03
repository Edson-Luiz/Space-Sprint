
if(place_meeting(x + 1, y, obj_collision_enemy) || place_meeting(x - 1, y, obj_collision_enemy)){
	direction += 180
}

if(direction == 180){
	image_xscale = -1

}

if(direction == 0){
	image_xscale = 1
	
}

if(obj_player.y < y){
	if(place_meeting(x,y - 1, obj_player)){
		if(obj_player.velocidade_vertical > 0){
			obj_player.velocidade_vertical = 0
			obj_player.velocidade_vertical -= obj_player.pulo
			instance_destroy()
		}
	}
}




