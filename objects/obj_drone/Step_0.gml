/// @description Move

switch(state){
case PICK_OFFSET:
	hoff = irandom_range(-100, 100)
	voff = irandom_range(-100, 100)
	state = MOVE_TO_OFFSET
	break

case MOVE_TO_OFFSET:
	var target_x = obj_player.x + hoff, target_y = obj_player.y + voff, d = point_distance(x, y, target_x, target_y), spd = sqrt(hspeed * hspeed + vspeed * vspeed)
	
	if(d < 40 && spd < 2)
		state = HOLD
	
	var h = (target_x - x) / d, v = (target_y - y) / d
	hctrl = spd < d - 40 ? h : -h
	vctrl = spd < d - 40 ? v : -v
	
	image_angle = point_direction(x, y, target_x, target_y)
	break

case HOLD:
	state = point_distance(x, y, obj_player.x, obj_player.y) > 200 ? PICK_OFFSET : HOLD
	hctrl = hdrift
	vctrl = vdrift
}

// Inherit the parent event
event_inherited()

image_alpha = fade ? .3 : 1
fade = false