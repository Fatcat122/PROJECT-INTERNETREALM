if image_index == 0 && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) {
    image_index = 1;
} else if image_index == 1 && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) {
    image_index = 2;
} else if image_index == 2 && (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
    image_index = 3;
} else if image_index == 3 && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
    image_index = 2;
} else if image_index == 2 && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) {
    room_goto(rRuinsStart);
}