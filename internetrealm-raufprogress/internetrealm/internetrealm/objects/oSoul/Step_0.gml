right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
up_key = keyboard_check(vk_up)
down_key = keyboard_check(vk_down)

xspd = (right_key - left_key) * global.soul_spd;
yspd = (up_key - down_key) * global.soul_spd;

if global.lnv_frames > 0 {
	global.lnv_frames = 1;
	image_speed = 0;
	image_index = 0;
}




