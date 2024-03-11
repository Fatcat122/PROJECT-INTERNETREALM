///keyboard checks
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);

///movement
xspd = 0;
yspd = (down_key - up_key) * move_spd;

if (right_key) {
    xspd = move_spd;
} else if (left_key) {
    xspd = -move_spd;
}

///collision
if place_meeting(x + xspd, y, oWall) {
    xspd = 0;
}
if place_meeting(x, y + yspd, oWall) {
    yspd = 0;
}

///additional movement checks
if (up_key) {
    if (!place_meeting(x, y - move_spd, oWall)) {
        yspd = -move_spd;
    }
}

if (down_key && yspd >= 0) {
    if (!place_meeting(x, y + move_spd, oWall)) {
        yspd = move_spd;
    }
}

///animation
if abs(xspd) > abs(yspd) {
    if (xspd > 0) {
        sprite_index = sPlayerRight;
    } else if (xspd < 0) {
        sprite_index = sPlayerLeft;
    }
} else {
    if (yspd > 0) {
        sprite_index = sPlayerDown;
    } else if (yspd < 0) {
        sprite_index = sPlayerUp;
    }
}

if (xspd != 0 or yspd != 0) {
    image_speed = 1;
} else {
    image_speed = 0;
    image_index = 0;
}

y += yspd;
x += xspd;