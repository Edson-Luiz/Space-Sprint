var chao = place_meeting(x, y + 1, obj_block)

if(place_meeting(x + 1, y, obj_collision_enemy) || place_meeting(x - 1, y, obj_collision_enemy)){
	direction += 180
}

if(direction == 0){
	image_xscale = 1
	
}

if(direction == 180){
	image_xscale = -1

}

