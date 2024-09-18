if(obj_player.y < y){
	if(place_meeting(x,y - 1, obj_player)){
		if(obj_player.velocidade_vertical > 0){
			obj_player.velocidade_vertical = 0
			obj_player.velocidade_vertical -= obj_player.pulo
			instance_destroy()
		}
	}
}