if (place_meeting(x, y + velocidade_vertical, obj_block)){
	while(!place_meeting(x, y + sign(velocidade_vertical), obj_block)){
		y += sign(velocidade_vertical)
	
	}
	velocidade_vertical = 0

}

y += velocidade_vertical