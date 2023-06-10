/// @description Move
hctrl = keyboard_check(vk_right) - keyboard_check(vk_left)
vctrl = keyboard_check(vk_down) - keyboard_check(vk_up)
event_inherited()
image_angle = point_direction(x,y,mouse_x,mouse_y)